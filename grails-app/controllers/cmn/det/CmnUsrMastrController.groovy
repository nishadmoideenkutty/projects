package cmn.det


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import hashencode.HashEncode

import grails.converters.JSON
import java.text.DateFormat
import java.text.SimpleDateFormat
import org.springframework.dao.DataIntegrityViolationException
import java.io.*;

import java.io.FileOutputStream;
import java.io.FileInputStream;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import org.springframework.web.multipart.*;
import javax.servlet.ServletOutputStream;
import org.apache.catalina.core.*;
import org.springframework.web.multipart.*;
import org.codehaus.groovy.*;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import groovy.sql.Sql
@Transactional(readOnly = true)
class CmnUsrMastrController {

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    def dataSource
    def assetResourceLocator
     def objCmnCmpMastr
     def beforeInterceptor = {  
    
       objCmnCmpMastr=CmnCmpMastr.findByDelFlgAndStatsFlg("N","A")
        
    }
    
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CmnUsrMastr.list(params), model:[cmnUsrMastrInstanceCount: CmnUsrMastr.count(),frmName:"User", subFrmName:"List"]
    }
    
    def jsGridData() {
        
        def postDtls = CmnUsrMastr.createCriteria().list() {
                    
            if(params.usrName)
            {
                ilike('usrName', "%${params.usrName}%") 
            }
              if(params.usrCd)
            {
                ilike('usrCd', "%${params.usrCd}%") 
            }
              if(params.statsFlg)
            {
                ilike('statsFlg', "${params.statsFlg}%") 
            }
            
            if(params.onlineFlg)
            {            
                 if(params.onlineFlg=="Y")
                 ilike('onlineFlg', "${params.onlineFlg}") 
                 else
                 {
                        or{
                       ilike('onlineFlg', "${params.onlineFlg}")
                       isNull('onlineFlg')
                       }
                 }
                
            }
             
            
            ilike('delFlg', "N")
           // ilike('statsFlg', "A")
            order("id", "desc")
        
        
        }

        //        def totalRows = postDtls.totalCount
        //        def numberOfPages = Math.ceil(totalRows / maxRows)
        def results = postDtls?.collect {   
            // println "it.telNo----------------"+it.brnchCd
               
            [ 
                id:it.id,
                usrName:it.usrName,  
                usrCd: it.usrCd == null || it.usrCd==""?"":it.usrCd,  
                onlineFlg: it.onlineFlg == null || it.onlineFlg==""?"N":it.onlineFlg,  
                brnchId:it.brnchId?it.brnchId:" ",
                statsFlg:it.statsFlg,
            ]
           
        }	

		
//        println "results---"+results
        def jsonData = [rows:results]
        render jsonData as JSON
         
    }

    def show(CmnUsrMastr cmnUsrMastrInstance) {
        respond cmnUsrMastrInstance
    }

    def create() {
        respond new CmnUsrMastr(params),model:[frmName:"User", subFrmName:"Create",role:""]
    }

    @Transactional
    def save(CmnUsrMastr cmnUsrMastrInstance) {
        
          CmnUsrMastr.withTransaction()
        {                        
            status->  
            try{ 
                
            
        if (cmnUsrMastrInstance == null) {
            notFound()
            return
        }
            //println "params:"+params
                
             def objCmnRoleMastr
             if(params.usrRole)  
             {
             objCmnRoleMastr=CmnRoleMastr.get(params.usrRole.toLong())
             cmnUsrMastrInstance.usrType=objCmnRoleMastr?.roleCd
                    if(params.loctnId)
                     {
                         cmnUsrMastrInstance.usrType='C'
                     }
             }
             
             if(!cmnUsrMastrInstance?.usrType)                
              cmnUsrMastrInstance.usrType="E"
             
                
              cmnUsrMastrInstance.with{
                    
                     compId=objCmnCmpMastr?.id.toInteger();
                     HashEncode objEncode=new HashEncode()          
                     cmnUsrMastrInstance.usrPaswrd=objEncode.md5Java(params.usrPaswrd)
                    
                }
                
          
           
                
            def uploadedFile =request.getFile('profPic') //request.getFile(params.filePath)     
            cmnUsrMastrInstance.profPic = uploadedFile.getBytes()  
            cmnUsrMastrInstance.picType=uploadedFile.getContentType().toString();
            if( cmnUsrMastrInstance.profPic ==[] ||  cmnUsrMastrInstance.profPic =="" ||  cmnUsrMastrInstance.profPic == null)
            {
                    def editImg= new CmnGenSetting() 
                    editImg=CmnGenSetting.get(1)
               
   
                        
                cmnUsrMastrInstance.profPic = editImg.profPic
                cmnUsrMastrInstance.picType = editImg.picType
            }   
            
                

            if (!cmnUsrMastrInstance.validate())
                {
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    cmnUsrMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                    respond cmnUsrMastrInstance.errors, view:'create' ,model:[custError:custError,frmName:"User", subFrmName:"Create",role:""]
                    return
                }
        
        
        if (cmnUsrMastrInstance.hasErrors()) {
            respond cmnUsrMastrInstance.errors, view:'create'
            return
        }

        cmnUsrMastrInstance.save flush:true
        
                if(objCmnRoleMastr)
                {
                 def objCmnUsrRoleDtls = new CmnUsrRoleDtls()
                 objCmnUsrRoleDtls.with{
                     usr=cmnUsrMastrInstance
                     compId=objCmnCmpMastr?.id.toInteger();
                     role=objCmnRoleMastr
                     cretnBy=cmnUsrMastrInstance?.cretnBy
                     cretnDate=cmnUsrMastrInstance?.cretnDate
                 }
                 
                    if (!objCmnUsrRoleDtls.validate())
                {
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    objCmnUsrRoleDtls.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                    respond cmnUsrMastrInstance.errors, view:'create' ,model:[custError:custError,frmName:"User", subFrmName:"Create"]
                    return
                }
                objCmnUsrRoleDtls.save flush:true
                    
                    
                }
                

        request.withFormat {
            form multipartForm {
               
                        flash.message = "Successfully saved"  
                        redirect action: "create", method: "GET"
            }
            '*' { respond cmnUsrMastrInstance, [status: CREATED] }
        }
        
                
                }//END TRY
            catch(Exception e)
            {
                println "e=:"+e
                status.setRollbackOnly();
                request.withFormat {
                    form multipartForm {
                        flash.error = "Try Again..."+e                      
                        redirect action: "create", method: "GET"
                    }
            '*' { respond cmnUsrMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION
    }

    def edit(CmnUsrMastr cmnUsrMastrInstance) {
        
        def roleDtls= CmnUsrRoleDtls.findByDelFlgAndStatsFlgAndUsr('N','A',cmnUsrMastrInstance)      
        respond cmnUsrMastrInstance,model:[frmName:"User", subFrmName:"Edit",role:roleDtls?.role?.id]
    }

    @Transactional
    def update(CmnUsrMastr cmnUsrMastrInstance) {
        
         CmnUsrMastr.withTransaction()
        {                        
            status->  
            try{ 
                          
        if (cmnUsrMastrInstance == null) {
            notFound()
            return
        }
      //  println  "params :: "+params
                def sql = new Sql(dataSource)          
                def updateSql1 = """ update   cmn_usr_role_dtls set del_flg='Y'  where usr_id=${cmnUsrMastrInstance?.id} and del_flg='N' """
                sql.executeUpdate updateSql1
                
             def objCmnRoleMastr           
             if(params.usrRole)  
             {
             objCmnRoleMastr=CmnRoleMastr.get(params.usrRole.toLong())
             cmnUsrMastrInstance.usrType=objCmnRoleMastr?.roleCd
                    if(params.loctnId)
                     {
                         cmnUsrMastrInstance.usrType='C';
                     }
                     else{                     
                       cmnUsrMastrInstance.loctnId = null;
                     }
             }
            
             if(!cmnUsrMastrInstance?.usrType)                
              cmnUsrMastrInstance.usrType="O"
             
                //println params
              cmnUsrMastrInstance.with{
                    
                    
                    compId=objCmnCmpMastr?.id.toInteger();
                    
                    if(params.chkRestPass)
                    {
                     HashEncode objEncode=new HashEncode()          
                     cmnUsrMastrInstance.usrPaswrd=objEncode.md5Java(params.usrPaswrd)
                    }
                    else{
                         def strQry="select usr_paswrd from cmn_usr_mastr where del_flg='N'  and usr_id='${cmnUsrMastrInstance?.id}'"
                         def pass = sql.firstRow(strQry)
                         cmnUsrMastrInstance.usrPaswrd=pass[0]
                    }
                }
                
          
           
           // println "profPic :: "+request.getFile('profPic')
            
             def uploadedFile =request.getFile('profPic') //request.getFile(params.filePath)  
                           
                
             if(!uploadedFile.empty)
             {
                cmnUsrMastrInstance.profPic = uploadedFile.getBytes()  
                cmnUsrMastrInstance.picType=uploadedFile.getContentType().toString();
             }
             else{                   
                def strQuery="select prof_pic,pic_type from cmn_usr_mastr where del_flg='N'  and usr_id='${cmnUsrMastrInstance?.id}'"
                def row = sql.firstRow(strQuery)                                                       
                 cmnUsrMastrInstance.profPic= row[0];
                 cmnUsrMastrInstance.picType= row[1] ;  
                    
             }
            
                              
            
            if( cmnUsrMastrInstance.profPic ==[] ||  cmnUsrMastrInstance.profPic =="" ||  cmnUsrMastrInstance.profPic == null)
            {
                
                
                    def editImg= new CmnGenSetting() 
                    editImg=CmnGenSetting.get(1)
               
   
                        
                cmnUsrMastrInstance.profPic = editImg.profPic
                cmnUsrMastrInstance.picType = editImg.picType
            }   
            
                
       
         if (!cmnUsrMastrInstance.validate())
                {
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    cmnUsrMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                    respond cmnUsrMastrInstance.errors, view:'edit' ,model:[custError:custError,frmName:"User", subFrmName:"Edit"]
                    return
                }

        if (cmnUsrMastrInstance.hasErrors()) {
            respond cmnUsrMastrInstance.errors, view:'edit'
            return
        }

        
        cmnUsrMastrInstance.save flush:true

                if(objCmnRoleMastr)
                {
                 def objCmnUsrRoleDtls = new CmnUsrRoleDtls()
                 objCmnUsrRoleDtls.with{
                     usr=cmnUsrMastrInstance
                     compId=objCmnCmpMastr?.id.toInteger();
                     role=objCmnRoleMastr
                     cretnBy=cmnUsrMastrInstance?.cretnBy
                     cretnDate=cmnUsrMastrInstance?.cretnDate
                 }
                 
                    if (!objCmnUsrRoleDtls.validate())
                {
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    objCmnUsrRoleDtls.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                    respond cmnUsrMastrInstance.errors, view:'edit' ,model:[custError:custError,frmName:"User", subFrmName:"Edit"]
                    return
                }
                objCmnUsrRoleDtls.save flush:true
                    
                    
                }
                
                sql.close();
                
        request.withFormat {
            form multipartForm {
                        flash.message="successfully updated"
                        redirect action: "index", method: "GET"
            }
            '*'{ respond cmnUsrMastrInstance, [status: OK] }
        }
        
                }//END TRY
            catch(Exception e)
            {
                println "e=:"+e
                status.setRollbackOnly();
                request.withFormat {
                    form multipartForm {
                        flash.error = "Try Again..."+e                      
                        redirect action: "index", method: "GET"
                    }
            '*' { respond cmnUsrMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION
    }

    @Transactional
    def delete(CmnUsrMastr cmnUsrMastrInstance) {

        if (cmnUsrMastrInstance == null) {
            notFound()
            return
        }

        cmnUsrMastrInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CmnUsrMastr.label', default: 'CmnUsrMastr'), cmnUsrMastrInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cmnUsrMastr.label', default: 'CmnUsrMastr'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    
    
    def updateImage()
    {
      
         try{   
           def usrId
           if(params.id) 
           {
              usrId=params.id
           }
           else{
            usrId=request.getCookie('ajx_ui');
            if(!usrId)
            {
              usrId= session?.userId
            }
           }
           // def editImg = com.htl.hr.det.HrEmpMstr.findByEmpUsrIdAndDelFlg(usrId,'N')         
            def editImg = CmnUsrMastr.get(usrId)     
            
            if (!editImg || !editImg.profPic) {
                    editImg= new CmnGenSetting() 
                    editImg=CmnGenSetting.get(1)
            }            
            response.setContentType(editImg.picType)
            response.setContentLength(editImg.profPic.size())
            OutputStream out = response.getOutputStream();
            out.write(editImg.profPic);
            out.close();          
        }
        catch(Exception e)
        {
            println "-----updateImage--------Exception :: "+e
        }
    }
}
