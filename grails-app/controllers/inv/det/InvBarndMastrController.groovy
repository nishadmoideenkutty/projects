package inv.det


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON

import java.text.DateFormat
import java.text.SimpleDateFormat

@Transactional(readOnly = true)
class InvBarndMastrController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def genCallService
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond InvBarndMastr.list(params), model:[invBarndMastrInstanceCount: InvBarndMastr.count(),frmName:"Brand", subFrmName:"List"]
    }

    
    def jsGridData() {
         
        def aryList = InvBarndMastr.createCriteria().list() {
                                
            if(params.brandCd)
            {
                ilike('brandCd', "%${params.brandCd}%") 
            }            
            if(params.brandName)
            {
                ilike('brandName', "%${params.brandName}%") 
            }
            if(params.companyName)
            {
                ilike('companyName', "%${params.companyName}%") 
            }
                                                                               
            ilike('delFlg', "N")
            ilike('statsFlg', "A")
            order("id", "desc")
        } 
        
        def results = aryList?.collect {            
                   
            [ 
                id:it.id,
                brandCd:it.brandCd,
                brandName:it.brandName,     
                companyName:it.companyName?it.companyName:"",      
            ]
           
        }	
		     
        def jsonData = [rows:results]
        render jsonData as JSON
        
        
    }
    
        
    def show(InvBarndMastr invBarndMastrInstance) {
        respond invBarndMastrInstance
    }

    def create() {
        
         def invBarndMastrInstance = new InvBarndMastr(params)
         //invBarndMastrInstance.brandCd = genCallService.tranNumGenerationShow("BND",request.getCookie('cvr_bhd') );           
         respond invBarndMastrInstance,model:[frmName:"Brand", subFrmName:"Create"]
    }

    @Transactional
    def save(InvBarndMastr invBarndMastrInstance) {                        
        InvBarndMastr.withTransaction()
        {                        
            status->  
            try{ 
                
                
                
                if (invBarndMastrInstance == null) {
                    notFound()
                    return
                }
        
                if (!invBarndMastrInstance.validate())
                {
                    println invBarndMastrInstance.errors
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    invBarndMastrInstance.errors.allErrors.eachWithIndex { it1,i ->  custError[i] = message(code: it1.defaultMessage ,args:[message(code:it1.field)] ) ; }                                                                                                                        
                    
                    if(params.brandModal)  
                          {            
                                        render(template:"/cmnCommon/msgAlert",model:[warning:custError])
                                    }
                                    else{
                           respond invBarndMastrInstance.errors, view:'create' ,model:[custError:custError,frmName:"Brand", subFrmName:"Create"]
                                    }
                                    
                    return
                }

                if (invBarndMastrInstance.hasErrors()) {
                    respond invBarndMastrInstance.errors, view:'create'
                    return
                }

                //invBarndMastrInstance.brandCd = genCallService.tranNumGenerationSave("BND",request.getCookie('cvr_bhd') );     
                invBarndMastrInstance.save flush:true

            if(params.brandModal)        
            {            
            render(template:"/cmnCommon/msgAlert",model:[success: "Successfully Saved"])
            }
            else{
            
        
                request.withFormat {
                    form multipartForm {
                        flash.message = "Successfully Saved"
                        redirect action: "create", method: "GET"
                    }
            '*' { respond invBarndMastrInstance, [status: CREATED] }
                }
        
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
            '*' { respond invBarndMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION 
        
    }

    def edit(InvBarndMastr invBarndMastrInstance) {
        respond invBarndMastrInstance,model:[frmName:"Brand", subFrmName:"Edit"]
    }

    @Transactional
    def update(InvBarndMastr invBarndMastrInstance) {
        
          withForm{
           
        InvBarndMastr.withTransaction()
        {                        
            status->  
            try{ 
                
            
        if (invBarndMastrInstance == null) {
            notFound()
            return
        }

                    
                    
                      if (!invBarndMastrInstance.validate())
                {
                          
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    invBarndMastrInstance.errors.allErrors.eachWithIndex { it1,i ->  custError[i] = message(code: it1.defaultMessage ,args:[message(code:it1.field)] ) ; }                                                                   
                    respond invBarndMastrInstance.errors, view:'edit' ,model:[custError:custError,frmName:"Brand", subFrmName:"Edit"]
                                   
                        
                    return
                }
                
                    
        if (invBarndMastrInstance.hasErrors()) {
            respond invBarndMastrInstance.errors, view:'edit'
            return
        }

        invBarndMastrInstance.save flush:true

        request.withFormat {
            form multipartForm {
                   flash.message = "Successfully Updated"
                        redirect action: "index", method: "GET"
            }
            '*'{ respond invBarndMastrInstance, [status: OK] }
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
            '*' { respond invBarndMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
            }//END TRANSACTION
          }.invalidToken {
        flash.error = "Double Click Not Allowed"                     
        redirect action: "index", method: "GET"
    }
        
    }

    @Transactional
    def delete(InvBarndMastr invBarndMastrInstance) {

        if (invBarndMastrInstance == null) {
            notFound()
            return
        }

        invBarndMastrInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'InvBarndMastr.label', default: 'InvBarndMastr'), invBarndMastrInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'invBarndMastr.label', default: 'InvBarndMastr'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    
    
    
    @Transactional
     def delete1() {
       println "delete"+params.id
        
       try{
        def invBarndMastrInstance=InvBarndMastr.get(params.id.toLong())
        
        def  aryInvItmMastr = InvItmMastr.findAllByDelFlgAndBrand("N",invBarndMastrInstance)
      
        if(aryInvItmMastr && aryInvItmMastr.size()>0)
        {
                flash.errors = "Could not delete this category..used another transaction! "
                redirect action:"index", method:"GET"
                return
        }
      
        
        if(invBarndMastrInstance.delete () )
        {
            
            
              
        }
       
                flash.message = "You have successfully deleted "
                redirect action:"index", method:"GET"    
                return 
       
        
       }catch(Exception e)
       {
                println e
                redirect action:"index", method:"GET" 
                return 
       }
    }
    
}
