package cmn.det



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON
import groovy.sql.Sql

@Transactional(readOnly = true)
class CmnTranMasterController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def dataSource
    def objGenCmnUsrMastr  
    def beforeInterceptor = {  
       
        objGenCmnUsrMastr=CmnUsrMastr.get(Integer.parseInt(request.getCookie('ajx_ui')).toLong())    
       
        
    }
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CmnTranMaster.list(params), model:[cmnTranMasterInstanceCount: CmnTranMaster.count(),frmName:"Transactions", subFrmName:"List"]
    }
    def indexMastr(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CmnTranMaster.list(params), model:[cmnTranMasterInstanceCount: CmnTranMaster.count(),frmName:"Master", subFrmName:"List"]
    }
    

    def show(CmnTranMaster cmnTranMasterInstance) {
        respond cmnTranMasterInstance
    }

    def create() {
        respond new CmnTranMaster(params),model:[frmName:"Transactions", subFrmName:"Create"]
    }

    
    def jsGridData() {
         
        def aryList = CmnTranMaster.createCriteria().list() {
          
            
            if(params.tranName)
            {
                ilike('tranName', "%${params.tranName}%") 
            }
            if(params.tranCd)
            {
                ilike('tranCd', "%${params.tranCd}%") 
            }
                                                                  
            ilike('delFlg', "N")            
            order("id", "desc")
                            
        }       
        def results = aryList?.collect {            
                   
            [ 
                id:it.id,
                tranName:it.tranName,
                tranCd:it.tranCd,               
            ]
           
        }			     
        def jsonData = [rows:results]
        render jsonData as JSON         
    }
    
    
    
     def jsGridDataMastr(){
         
        def aryList = CmnTranMaster.createCriteria().list() {
          
            
            if(params.tranName)
            {
                ilike('tranName', "%${params.tranName}%") 
            }
            if(params.tranCd)
            {
                ilike('tranCd', "%${params.tranCd}%") 
            }
                                                                  
            ilike('delFlg', "M")            
            order("id", "desc")
                            
        }       
        def results = aryList?.collect {            
                   
            [ 
                id:it.id,
                tranName:it.tranName,
                tranCd:it.tranCd,               
            ]
           
        }			     
        def jsonData = [rows:results]
        render jsonData as JSON         
    }
    
    
    @Transactional
    def save(CmnTranMaster cmnTranMasterInstance) {
        
        
      
        
        
        withForm{
           
            CmnTranMaster.withTransaction()
            {                        
                status->  
                try{ 
          
                    if (cmnTranMasterInstance == null) {
                        notFound()
                        return
                    }
        
                    
                    if (!cmnTranMasterInstance.validate())
                    {
               
                        /*
                         *Error throw from controller 
                         *custError array to palce the multiple errors
                         *main.gsp use above variable to show the throw massage
                         **/
                        println cmnTranMasterInstance.errors
                        def custError=[]         
                        status.setRollbackOnly();
                        cmnTranMasterInstance.errors.allErrors.eachWithIndex { it1,i ->  custError[i] = message(code: it1.defaultMessage ,args:[message(code:it1.field)] ) ; }                                                                   
                        respond cmnTranMasterInstance.errors, view:'create' ,model:[custError:custError,frmName:"Transactions", subFrmName:"Create"]
                        return
                    }
                    

                    if (cmnTranMasterInstance.hasErrors()) {
                        respond cmnTranMasterInstance.errors, view:'create'
                        return
                    }

                    cmnTranMasterInstance.save flush:true

                    request.withFormat {
                        form multipartForm {
                            flash.message = "Successfully Saved"
                            redirect action: "create", method: "GET"
                        }
            '*' { respond cmnTranMasterInstance, [status: CREATED] }
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
            '*' { respond cmnTranMasterInstance, [status: CREATED] }
                    }
                
                }//END CATCH
            }//END TRANSACTION 
        }.invalidToken {
            flash.error = "Double Click Not Allowed"                     
            redirect action: "create", method: "GET"
        }
    }

    def edit(CmnTranMaster cmnTranMasterInstance) {
        
        def cmnTranNumGenMastrInstance =  CmnTranNumGenMastr.findAllByDelFlgAndTran("N",cmnTranMasterInstance)
        println "cmnTranNumGenMastrInstance ----------------->"+cmnTranNumGenMastrInstance
        respond cmnTranMasterInstance,model:[frmName:"Transactions", subFrmName:"Edit",cmnTranNumGenMastrInstance:cmnTranNumGenMastrInstance]
    }

    
     def editMastr(CmnTranMaster cmnTranMasterInstance) {
        
        def cmnTranNumGenMastrInstance =  CmnTranNumGenMastr.findAllByDelFlgAndTran("N",cmnTranMasterInstance)
        respond cmnTranMasterInstance,model:[frmName:"Transactions", subFrmName:"Edit",cmnTranNumGenMastrInstance:cmnTranNumGenMastrInstance,mastr:"M"]
    }
    
    @Transactional
    def update(CmnTranMaster cmnTranMasterInstance) {
        
        withForm{
          
            CmnTranMaster.withTransaction()
            {                        
                status->  
                try{ 
                    
                
                    if (cmnTranMasterInstance == null) {
                        notFound()
                        return
                    }

                    cmnTranMasterInstance.statsFlg="I"
                    
                    
                    if (!cmnTranMasterInstance.validate())
                    {
               
                        /*
                         *Error throw from controller 
                         *custError array to palce the multiple errors
                         *main.gsp use above variable to show the throw massage
                         **/
                        println cmnTranMasterInstance.errors
                        def custError=[]         
                        status.setRollbackOnly();
                        cmnTranMasterInstance.errors.allErrors.eachWithIndex { it1,i ->  custError[i] = message(code: it1.defaultMessage ,args:[message(code:it1.field)] ) ; }                                                                   
                        respond cmnTranMasterInstance.errors, view:'edit' ,model:[custError:custError,frmName:"Transactions", subFrmName:"Edit"]
                        return
                    }
                    
                    
                    if (cmnTranMasterInstance.hasErrors()) {
                        respond cmnTranMasterInstance.errors, view:'edit'
                        return
                    }

                    cmnTranMasterInstance.save flush:true

                    
                    
                    def objbran=cmn.det.CmnBranchMastr.findAllByDelFlgAndStatsFlg('N','A')
                        
                    objbran.each(){
                        
                        obj->
                         
                        
                       
                        def objCmnTranNumGenMastr= CmnTranNumGenMastr.findByTranAndBranchAndDelFlgInList(cmnTranMasterInstance,obj,["N","M"])  
                        
                          println "objCmnTranNumGenMastr----------->>> "+objCmnTranNumGenMastr
                          
                        if(!objCmnTranNumGenMastr)
                        {
                        objCmnTranNumGenMastr= new CmnTranNumGenMastr()
                        
                        }
                        
                        
                         
                       
                        objCmnTranNumGenMastr.tran=cmnTranMasterInstance
                       
                        objCmnTranNumGenMastr.noPrefix=params.get('tmpnoPrifix_'+obj?.id) 
                         
                        objCmnTranNumGenMastr.noLength=params.get('tmpnoLen_'+obj?.id)? params.get('tmpnoLen_'+obj?.id).toInteger():0.toInteger() 
                        
                        objCmnTranNumGenMastr.nextNo=params.get('tmpnoLast_'+obj?.id) ? params.get('tmpnoLast_'+obj?.id).toInteger():0.toInteger() 
                         
                        objCmnTranNumGenMastr.branch=obj
                        
                        
                        objCmnTranNumGenMastr.cretnBy=objGenCmnUsrMastr?.id.toInteger()
                        
                        objCmnTranNumGenMastr.cretnDate=new Date();
                        
                        objCmnTranNumGenMastr.updtdBy=objGenCmnUsrMastr?.id.toInteger()
                        
                        objCmnTranNumGenMastr.updtdDate=new Date();
                         
                    
                          
                         
                        
                            
                        if (!objCmnTranNumGenMastr.validate())
                        {

                            
                            println objCmnTranNumGenMastr.errors
                            def custError=[]         
                            status.setRollbackOnly();
                            objCmnTranNumGenMastr.errors.allErrors.eachWithIndex { it1,i ->  custError[i] = message(code: it1.defaultMessage ,args:[message(code:it1.field)] ) ; }                                                                   
                            
                             if(params.mastr)
                             respond objCmnTranNumGenMastr.errors, view:'edit' ,model:[custError:custError,frmName:"Master", subFrmName:"Edit"]
                             else
                             respond objCmnTranNumGenMastr.errors, view:'edit' ,model:[custError:custError,frmName:"Transactions", subFrmName:"Edit"]
                             
                            return
                                   

                        }
                                
                        
                        objCmnTranNumGenMastr.save flush:true
                    
                    }
                    
                    
                    request.withFormat {
                        form multipartForm {
                            flash.message = "Successfully Saved"
                            
                            
                            if(params.mastr)
                            redirect action: "indexMastr", method: "GET"
                            else                            
                            redirect action: "index", method: "GET"
                            
                        }
            '*'{ respond cmnTranMasterInstance, [status: OK] }
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
            '*' { respond cmnTranMasterInstance, [status: CREATED] }
                    }
                
                }//END CATCH
            }//END TRANSACTION 
        }.invalidToken {
            flash.error = "Double Click Not Allowed"                     
            redirect action: "index", method: "GET"
        }
    }

    @Transactional
    def delete(CmnTranMaster cmnTranMasterInstance) {

        if (cmnTranMasterInstance == null) {
            notFound()
            return
        }

        cmnTranMasterInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CmnTranMaster.label', default: 'CmnTranMaster'), cmnTranMasterInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cmnTranMaster.label', default: 'CmnTranMaster'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
