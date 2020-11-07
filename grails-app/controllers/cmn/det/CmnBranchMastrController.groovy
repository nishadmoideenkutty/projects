package cmn.det


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON

import groovy.sql.Sql
@Transactional(readOnly = true)
class CmnBranchMastrController {

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]
    def finTranService
    def dataSource
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CmnBranchMastr.list(params), model:[cmnBranchMastrInstanceCount: CmnBranchMastr.count(),frmName:"Branch", subFrmName:"List"]
    }

    def jsGridData() {
         
        def aryList = CmnBranchMastr.createCriteria().list() {
            //                    
            if(params.brnchCd)
            {
                ilike('brnchCd', "%${params.brnchCd}%") 
            }
            if(params.brnchName)
            {
                ilike('brnchName', "%${params.brnchName}%") 
            }
            if(params.contact)
            {
                ilike('contact', "%${params.contact}%") 
            }
            if(params.phNo)
            {
                ilike('phNo', "%${params.phNo}%") 
            }
            if(params.mobNo)
            {
                ilike('mobNo', "%${params.mobNo}%") 
            }
           
            
            
            ilike('delFlg', "N")
            ilike('statsFlg', "A")
            order("id", "desc")
            maxResults(500)
        
        }
       
        def results = aryList?.collect {            
                   
            [ 
                id:it.id,
                brnchCd:it.brnchCd,
                brnchName:it.brnchName,
                contact:it.contact,
                phNo:it.phNo,
                mobNo:it.mobNo,
            ]
           
        }	
		     
        def jsonData = [rows:results]
        render jsonData as JSON
         
    }
    
    
    
    def show(CmnBranchMastr cmnBranchMastrInstance) {
        respond cmnBranchMastrInstance
    }

    def create() {
        respond new CmnBranchMastr(params),model:[frmName:"COMPANY", subFrmName:"Create"]
    }

    @Transactional
    def save(CmnBranchMastr cmnBranchMastrInstance) {
        
        CmnBranchMastr.withTransaction()
        {                        
            status->  
            try{ 
              
            
                if (cmnBranchMastrInstance == null) {
                    notFound()
                    return
                }
                cmnBranchMastrInstance.with{
                   
                    if(params.branchTyp=='on')
                    {
                        branchTyp='M'
                    }
                 
                    state=params.state
                    cretnBy=request.getCookie('ajx_ui').toInteger()
                    cretnDate=new Date();
                }
                
               
                if (!cmnBranchMastrInstance.validate())
                {
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    cmnBranchMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                    respond cmnBranchMastrInstance.errors, view:'create' ,model:[custError:custError,frmName:"Branch", subFrmName:"Create"]
                    return
                }
                if (cmnBranchMastrInstance.hasErrors()) {
                    respond cmnBranchMastrInstance.errors, view:'create'
                    return
                }

                cmnBranchMastrInstance.save flush:true
     
                request.withFormat {
                    form multipartForm {
                      
                        flash.message = "Successfully Saved"
                        redirect action: "create", method: "GET"
                    }
            '*' { respond cmnBranchMastrInstance, [status: CREATED] }
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
            '*' { respond cmnBranchMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION    
        
    }

    def edit(CmnBranchMastr cmnBranchMastrInstance) {
        respond cmnBranchMastrInstance,model:[frmName:"COMPANY", subFrmName:"Edit"]
    }

    @Transactional
    def update(CmnBranchMastr cmnBranchMastrInstance) {
        
         
        CmnBranchMastr.withTransaction()
        {                        
            status->  
            try{ 
                
            
                if (cmnBranchMastrInstance == null) {
                    notFound()
                    return
                }
                //  println "params @:: "+params
                
                cmnBranchMastrInstance.with{
                    if(params.branchTyp=='on')
                    {
                        branchTyp='M'
                    }
                    state=params.state
                    updtdBy=request.getCookie('ajx_ui').toInteger()
                    updtdDate=new Date();
                                  
                }
                
                
                
                if (!cmnBranchMastrInstance.validate())
                {
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    cmnBranchMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                    respond cmnBranchMastrInstance.errors, view:'edit' ,model:[custError:custError,frmName:"COMPANY", subFrmName:"Edit"]
                    return
                }
                
                
                if (cmnBranchMastrInstance.hasErrors()) {
                    respond cmnBranchMastrInstance.errors, view:'edit'
                    return
                }

                
                if(cmnBranchMastrInstance.branchTyp=='M')
                {
                    
                     def objCmnCmpMastr = CmnCmpMastr.get(cmnBranchMastrInstance?.compId)
                    def uploadedFile =request.getFile('profPic') //request.getFile(params.filePath)     
                    objCmnCmpMastr.profPic = uploadedFile.getBytes()  
                    objCmnCmpMastr.picType=uploadedFile.getContentType().toString();
        //            println "validation Success -->>A"
                    if( objCmnCmpMastr.profPic ==[] ||  objCmnCmpMastr.profPic =="" ||  objCmnCmpMastr.profPic == null)
                    {
                        editImg= new CmnGenSetting() 
                        editImg=CmnGenSetting.get(1)
                         objCmnCmpMastr.profPic = editImg?.noImage 
                          objCmnCmpMastr.picType=  editImg?.noimageType
                    }   
            
                   
                    objCmnCmpMastr.with{
                        compCd=cmnBranchMastrInstance?.brnchCd
                        compName=cmnBranchMastrInstance?.brnchName
                        showName=cmnBranchMastrInstance?.brnchName
                        bldngName=cmnBranchMastrInstance?.bldngName
                        phNo =cmnBranchMastrInstance?.phNo
                        mobNo=cmnBranchMastrInstance?.mobNo
                        email=cmnBranchMastrInstance?.email
                        tin=cmnBranchMastrInstance?.gstin
                        updtdBy=request.getCookie('ajx_ui').toInteger()
                        updtdDate=new Date();
                    }
                    objCmnCmpMastr.save()
                   
                    
                    
                    
                }
                
                cmnBranchMastrInstance.save flush:true

              
                
                request.withFormat {
                    form multipartForm {

                        flash.message = "Successfully Updated"
                        redirect action: "edit" ,id:cmnBranchMastrInstance?.id, method: "GET"
                    }
            '*'{ respond cmnBranchMastrInstance, [status: OK] }
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
            '*' { respond cmnBranchMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION 
        
    }

    def getImageCmp()
    {
     
       
         try{   
         
           def editImg =CmnCmpMastr.get(1)        
            if (!editImg || !editImg.profPic) {
                    editImg= new CmnGenSetting() 
                    editImg=CmnGenSetting.get(1)
                    response.setContentType(editImg.noImage)
                    response.setContentLength(editImg.noimageType.size())
                    OutputStream out = response.getOutputStream();
                    out.write(editImg.noImage);
                    out.close(); 
            }   
            else{
                    response.setContentType(editImg.picType)
                    response.setContentLength(editImg.profPic.size())
                    OutputStream out = response.getOutputStream();
                    out.write(editImg.profPic);
                    out.close();
            }
                     
        }
        catch(Exception e)
        {
            println "-----updateImage--------Exception :: "+e
        }
    }
  

   
}
