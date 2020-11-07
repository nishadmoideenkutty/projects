package inv.det

import cmn.det.CmnUsrMastr ;

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON
import groovy.sql.Sql
@Transactional(readOnly = true)
class InvItmMastrController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE", saveimage:"POST"]
    def dataSource
def genCallService
def objGenCmnUsrMastr
        def beforeInterceptor = {                  
       
        objGenCmnUsrMastr=CmnUsrMastr.get(Integer.parseInt(request.getCookie('ajx_ui')).toLong())    
       
     }
     
    
    
    def jsGridData() {
         
      
        try{
            
          
              
           if(params?.pageIndex && params.pageSize) 
           {
            if(params?.pageIndex.toInteger()==1)
            {
                 params.offset=0
                 params.max=params.pageSize
            }
            else{
                 params.offset=params.pageIndex.toInteger()*params.pageSize.toInteger()
                 params.max=params.pageSize
            }
           }
//            println "------------->>>"+params
        def aryList = InvItmMastr.createCriteria().list(params) {
            //     
            
            if(params.typeData)
            {
                or{
                    ilike('itmCd', "%${params.typeData}%") 
                    ilike('itmName', "%${params.typeData}%") 
                    ilike('itmBarCd', "%${params.typeData}%") 
                    ilike('itmBarCd', "%${params.typeData}%") 
                    ilike('hsnCd', "%${params.typeData}%") 
                    ilike('alias1', "%${params.typeData}%") 
                    ilike('alias2', "%${params.typeData}%") 
                    ilike('alias3', "%${params.typeData}%") 
                   
                    catgry{
                    ilike('catgryName', "%${params.typeData}%") 
                    ilike('delFlg', "N")
                    ilike('statsFlg', "A")
                    }
                
                    
                    brand{
                    ilike('brandName', "%${params.typeData}%") 
                     ilike('delFlg', "N")
                     }
                
                }
            }
            
            if(params.itmCd)
            {
                ilike('itmCd', "%${params.itmCd}%") 
            }
            
            if(params.itmName)
            {
                ilike('itmName', "%${params.itmName}%") 
            }
            if(params.itmBarCd)
            {
                ilike('itmBarCd', "%${params.itmBarCd}%") 
            }
            
            if(params.catgry)
            {
                catgry{
                    ilike('catgryName', "%${params.catgry}%") 
                    ilike('delFlg', "N")
                    ilike('statsFlg', "A")
                }
               
            }
            if(params.unit)
            {
                unit{
                    ilike('unitName', "%${params.unit}%") 
                    ilike('delFlg', "N")
                    ilike('statsFlg', "A")
                }
            }
           
            
             if(params.brand)
            {
                
                brand{
                    ilike('brandName', "%${params.brand}%") 
                     ilike('delFlg', "N")
                }
                
            }
            
            if(params.hsnCd)
            {
                ilike('hsnCd', "%${params.hsnCd}%") 
            }
            
            
            ilike('delFlg',"N")        
            order("id", "desc")
           
        
        }
        
        def results = aryList?.collect {            
    
             
                                         
            [ 
                id:it.id,
                itmCd:it.itmCd,
                itmName:it.itmName,               
                itmBarCd:it.itmBarCd,
                catgry:it.catgry == null || it.catgry==""?"":it.catgry?.catgryName,
               
                opRate:it.opRate,
                brand:it.brand? it?.brand.brandName:"",
              
                hsnCd:it.hsnCd?it.hsnCd:"",
                mrp:it.mrp?it.mrp:"",
                disc:it.disc?it.disc:"",
                statsFlg:it.statsFlg
            ]
           
                 
        }	
	
//            println "------------>>>"+ params.change
//               if(params.change)
//               results.removeAll { println it.change }   
        def jsonData=[rows:results, itemsCount:InvItmMastr.findAllByDelFlg("N").size()]     
       // println jsonData
      //  def jsonData = [rows:results]
       render jsonData as JSON
        }catch(Exception e)
        {
            
            println "ERROR :" +e
        }
         
    }
    
    
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond InvItmMastr.list(params), model:[invItmMastrInstanceCount: InvItmMastr.count(),frmName:"Item", subFrmName:"List"]
    }

    def show(InvItmMastr invItmMastrInstance) {
        respond invItmMastrInstance
    }

    def create() {
        respond new InvItmMastr(params),model:[frmName:"Item", subFrmName:"Create"]
    }

    @Transactional
    def save(InvItmMastr invItmMastrInstance) {
        
        InvItmMastr.withTransaction()
        {                        
            status->  
            try{ 
                
            
        if (invItmMastrInstance == null) {
            notFound()
            return
        }
                invItmMastrInstance.gentdCd = genCallService.tranNumGenerationShow("ITM",request.getCookie('ajx_bi') );  
                
                if (!invItmMastrInstance.validate())
                {
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    println "------ERROR----->"+invItmMastrInstance.errors
                    invItmMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                    if(params.itmModal)
                    {
                        render ([warning: custError] as JSON)
                    }
                    else
                    {
                        respond invItmMastrInstance.errors, view:'create' ,model:[custError:custError,frmName:"Item", subFrmName:"Create"]
                        return
                    }
                }
                
        if (invItmMastrInstance.hasErrors()) {
            respond invItmMastrInstance.errors, view:'create'
            return
        }
        invItmMastrInstance.gentdCd = genCallService.tranNumGenerationSave("ITM",request.getCookie('ajx_bi') );  
        invItmMastrInstance.save flush:true

        request.withFormat {
            form multipartForm {
                            flash.message = "Successfully Saved"
                            redirect action: "create", method: "GET"
            }
            '*' { respond invItmMastrInstance, [status: CREATED] }
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
            '*' { respond invItmMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION
    }

    def edit(InvItmMastr invItmMastrInstance) {
        respond invItmMastrInstance,model:[frmName:"Item", subFrmName:"Edit"]
    }

    @Transactional
    def update(InvItmMastr invItmMastrInstance) {
        
         
        InvItmMastr.withTransaction()
        {                        
            status->  
            try{ 
                
        if (invItmMastrInstance == null) {
            notFound()
            return
        }

                
                 if (!invItmMastrInstance.validate())
                {
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    println "------ERROR----->"+invItmMastrInstance.errors
                    invItmMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                    respond invItmMastrInstance.errors, view:'edit' ,model:[custError:custError,frmName:"Item", subFrmName:"Edit"]
                    return
                }
                
                
        if (invItmMastrInstance.hasErrors()) {
            respond invItmMastrInstance.errors, view:'edit'
            return
        }

        invItmMastrInstance.save flush:true

        request.withFormat {
            form multipartForm {
              flash.message = "Successfully Updated"
                            redirect action: "index", method: "GET"
            }
            '*'{ respond invItmMastrInstance, [status: OK] }
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
            '*' { respond invItmMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION
        
    }

    @Transactional
    def delete(InvItmMastr invItmMastrInstance) {

        if (invItmMastrInstance == null) {
            notFound()
            return
        }

        invItmMastrInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'InvItmMastr.label', default: 'InvItmMastr'), invItmMastrInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'invItmMastr.label', default: 'InvItmMastr'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    def imgUpload(InvItmMastr invItmMastrInstance)
    {
        respond invItmMastrInstance,model:[frmName:"Image", subFrmName:"Upload"]
    }
    
    @Transactional
    def saveimage(InvItmMastr invItmMastrInstance)
    {
        
        
        println "params--------------------"+params
          InvItmMastr.withTransaction()
        {                        
            status->  
            try{ 
                
              
                    if(request.getFile('itmMainImage'))
                    {
                        def uploadedFile =request.getFile('itmMainImage') //request.getFile(params.filePath)     
                           if(uploadedFile.getBytes())
                           {
                            def tmpInvItmImg=InvItmImg.findByDelFlgAndStatsFlgAndItm('N','M',invItmMastrInstance)
                            if(tmpInvItmImg)
                            {
                                 def sql = new Sql(dataSource)          
                                 def updateSql1 = """ delete from  inv_itm_img  where itm_id=${invItmMastrInstance.id} and stats_flg='M' """
                                 sql.executeUpdate updateSql1 
                            }
                                                                             
                            InvItmImg objInvItmImg = new InvItmImg();
                            objInvItmImg.itm=invItmMastrInstance    
                            objInvItmImg.itmPic = uploadedFile.getBytes() 
                            objInvItmImg.picType=uploadedFile.getContentType().toString();
                            objInvItmImg.statsFlg="M"
                            if(!objInvItmImg.validate())
                            {
                                println objInvItmImg.errors
                            }
                            objInvItmImg.save();
                           }
                    
                    }
                    
                     
                
                request.getFiles("itmImage[]").each { file ->
                            if(file.getBytes())
                            {
                            InvItmImg objInvItmImg = new InvItmImg();
                            objInvItmImg.itm=invItmMastrInstance    
                            objInvItmImg.itmPic = file.getBytes()  
                            objInvItmImg.picType=file.getContentType().toString();
                            if(!objInvItmImg.validate())
                            {
                                println objInvItmImg.errors
                            }
                            objInvItmImg.save();
                            }
                    }
                    
                 request.withFormat {
                    form multipartForm {                     
                                    redirect action: "imgUpload",id:invItmMastrInstance?.id , method: "GET"
                    }
                    '*'{ respond invItmMastrInstance, [status: OK] }
                }
            
                 }//END TRY
            catch(Exception e)
            {
                println "e=:"+e
                status.setRollbackOnly();
                request.withFormat {
                    form multipartForm {
                        flash.error = "Try Again..."+e                      
                        redirect action: "imgUpload",params:params?.id, method: "GET"
                    }
            '*' { respond invItmMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION
    }
    
    @Transactional
    def deleteImage()
    {
         if(params.id)
        {   
                                    
                def sql = new Sql(dataSource)          
                def updateSql1 = """ delete from  inv_itm_img  where img_id=${params.id}"""
                sql.executeUpdate updateSql1
                
               render true
        }
        
    }
}

