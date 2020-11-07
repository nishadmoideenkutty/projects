package gen.det



import cmn.det.*;

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON
import hashencode.HashEncode

@Transactional(readOnly = true)
class GenAcctMastrController {

 static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
  def genCallService
 def objGenCmnUsrMastr

     def beforeInterceptor = {                  
        if(request.getCookie('ajx_ui'))
        objGenCmnUsrMastr=CmnUsrMastr.get(Integer.parseInt(request.getCookie('ajx_ui')).toLong()) 
        else
        objGenCmnUsrMastr=CmnUsrMastr.get(1.toLong())
        
     }
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GenAcctMastr.list(params), model:[genAcctMastrInstanceCount: GenAcctMastr.count(),frmName:"Customer", subFrmName:"List"]
     }

     def jsGridData() {
        
        def aryList = GenAcctMastr.createCriteria().list() {
            //                    
            if(params.acctCd)
            {
                ilike('acctCd', "%${params.acctCd}%") 
            }
            if(params.acctName)
            {
                ilike('acctName', "%${params.acctName}%") 
            }
            if(params.mobl)
            {
                ilike('mobl', "%${params.mobl}%") 
            }
            if(params.email)
            {
                ilike('email', "%${params.email}%") 
            }
            if(params.poNo)
            {
                ilike('poNo', "%${params.poNo}%") 
            }
               if(params.locId)
            {
                eq('locId', params.locId.toInteger()) 
            }          
            
            
            
             if(params.district)
            {
                district{
                    
                      ilike('districtName', "%${params.district}%") 
                }
              
            }
            
              if(params.state)
            {
                state{
                    
                      ilike('stateName', "%${params.state}%") 
                }
              
            }
             if(params.contry)
            {
                contry{
                    
                      ilike('countryName', "%${params.contry}%") 
                }
              
            }
            
//            if(params.arName)
//            {
//                ar{
//                    ilike('arName', "%${params.arName}%") 
//                    ilike('delFlg', "N")            
//                }
//            }
        
            
            
        ilike('partyType',"CU")
        ilike('delFlg', "N")
        ilike('statsFlg', "A")
        order("id", "desc")
       
        
    }
    
      
    def results = aryList?.collect {            
                   println "------------------->"+it.locId
        [ 
            id:it.id,
            acctCd:it.acctCd,
            acctName:it.acctName,
            address1:it.address1?it.address1:"", 
            country:it.country?it.country:"", 
            state:it.state?it.state:"",      
            district:it.district?it.district:"",
            district:it.district?it.district:"",
            poNo:it.poNo?it.poNo:"",
            email:it.email?it.email:"",
            mobl:it.mobl?it.mobl:"",
            locId:it.locId?it.locId:"",

                
        ]
           
    }	
		     
    def jsonData = [rows:results]
    render jsonData as JSON
         
}

    def show(GenAcctMastr genAcctMastrInstance) {
        respond genAcctMastrInstance
    }

    def create() {
        respond new GenAcctMastr(params),model:[frmName:"Customer", subFrmName:"Create"]
    }

    @Transactional
    def save(GenAcctMastr genAcctMastrInstance) {
        
         GenLocMastr.withTransaction()
        {                        
            status->  
            try{ 
                
       if (genAcctMastrInstance == null) {
            notFound()
            return
        }
                 if(request.getCookie('ajx_bi'))
                 genAcctMastrInstance.acctCd = genCallService.tranNumGenerationShow("CU",request.getCookie('ajx_bi') );  
                 else
                 genAcctMastrInstance.acctCd = genCallService.tranNumGenerationShow("CU",1);  
        
                 def objGenLocMastr
                 if(params?.locId)
                 objGenLocMastr=GenLocMastr.get(params?.locId.toInteger())
                 
                 genAcctMastrInstance.with{
                     
                    partyType="CU"
                    branch=objGenCmnUsrMastr?.brnchId?CmnBranchMastr.get(objGenCmnUsrMastr?.brnchId):null
                    acctType=GenAcctTypeMastr.get(1)
                    acctSubtype=GenAcctSubtypeMastr.findByDelFlgAndAcctSubtypeCd("N","SUNDRYDEBTORS");
                    country=objGenLocMastr?objGenLocMastr.contry?.countryName:null
                    state=objGenLocMastr?objGenLocMastr.state?.stateName:null
                    district=objGenLocMastr?objGenLocMastr.district?.districtName:null
                    stateCd=objGenLocMastr?objGenLocMastr.state?.gstCode:null
                    cretnBy=objGenCmnUsrMastr?.id
                    cretnDate=new Date()
                 }
                
                
                 if(!genAcctMastrInstance.validate())
                {
                     println genAcctMastrInstance.errors
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                      genAcctMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                       flash.custError=custError[0];
                    
                      respond genAcctMastrInstance.errors, view:'create' ,model:[custError:custError,frmName:"Customer", subFrmName:"Create"]
                      
                     return
                }

        if (genAcctMastrInstance.hasErrors()) {
            respond genAcctMastrInstance.errors, view:'create'
            return
        }
        if(request.getCookie('ajx_bi'))
        genAcctMastrInstance.acctCd = genCallService.tranNumGenerationSave("CU",request.getCookie('ajx_bi') );
        else
        genAcctMastrInstance.acctCd = genCallService.tranNumGenerationShow("CU",1);
        
        if(genAcctMastrInstance.save(flush:true))
        {
            if(params.custForm=="1" ||  params.custForm==1)
            {
                 HashEncode objEncode=new HashEncode()    
                 
                def objCmnUsrMastr = new CmnUsrMastr()
                objCmnUsrMastr?.usrCd=genAcctMastrInstance?.mobl
                objCmnUsrMastr?.usrName=genAcctMastrInstance?.acctName
                objCmnUsrMastr?.usrPaswrd=objEncode.md5Java(params.paswrd)
                objCmnUsrMastr?.usrType="CU"
                objCmnUsrMastr?.compId=1
                objCmnUsrMastr?.brnchId=1
                objCmnUsrMastr?.cretnBy=genAcctMastrInstance?.id
                objCmnUsrMastr?.cretnDate=new Date()
                if(!objCmnUsrMastr.validate())               
                {
                    println objCmnUsrMastr.errors
                    def custError=[]         
                    status.setRollbackOnly();
                    objCmnUsrMastr.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                                        
                    respond genAcctMastrInstance.errors, view:'create' ,model:[custError:custError,frmName:"Customer", subFrmName:"Create"]
                }
                objCmnUsrMastr.save flush:true   
            }
        }

        request.withFormat {
            form multipartForm {
                         flash.message = "Successfully saved"                                   
                          redirect action: "create", method: "GET"
            }
            '*' { respond genAcctMastrInstance, [status: CREATED] }
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
            '*' { respond genAcctMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION
        
    }
    
    

    def edit(GenAcctMastr genAcctMastrInstance) {
        respond genAcctMastrInstance,model:[frmName:"Customer", subFrmName:"Edit"]
    }

    @Transactional
    def update(GenAcctMastr genAcctMastrInstance) {
        
        GenLocMastr.withTransaction()
        {                        
            status->  
            try{ 
                
                
        if (genAcctMastrInstance == null) {
            notFound()
            return
        }
        
                
                  def objGenLocMastr
                 if(params?.locId)
                 objGenLocMastr=GenLocMastr.get(params?.locId.toInteger())
                 
                 genAcctMastrInstance.with{
                     
                    partyType="CU"
                    branch=objGenCmnUsrMastr?.brnchId?CmnBranchMastr.get(objGenCmnUsrMastr?.brnchId):null
                    acctType=GenAcctTypeMastr.get(1)
                    acctSubtype=GenAcctSubtypeMastr.findByDelFlgAndAcctSubtypeCd("N","SUNDRYDEBTORS");
                    country=objGenLocMastr?objGenLocMastr.contry?.countryName:null
                    state=objGenLocMastr?objGenLocMastr.state?.stateName:null
                    district=objGenLocMastr?objGenLocMastr.district?.districtName:null
                    stateCd=objGenLocMastr?objGenLocMastr.state?.gstCode:null
                    
                 }

                
                 if(!genAcctMastrInstance.validate())
                {
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    genAcctMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                    respond genAcctMastrInstance.errors, view:'edit' ,model:[custError:custError,frmName:"Location", subFrmName:"Edit"]
                    return
                }
                
        if (genAcctMastrInstance.hasErrors()) {
            respond genAcctMastrInstance.errors, view:'edit'
            return
        }

        genAcctMastrInstance.save flush:true

        request.withFormat {
            form multipartForm {
                        flash.message="successfully updated"
                        redirect action: "index", method: "GET"
            }
            '*'{ respond genAcctMastrInstance, [status: OK] }
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
            '*' { respond genAcctMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION
        
    }

    @Transactional
    def delete(GenAcctMastr genAcctMastrInstance) {

        if (genAcctMastrInstance == null) {
            notFound()
            return
        }

        genAcctMastrInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GenAcctMastr.label', default: 'GenAcctMastr'), genAcctMastrInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'genAcctMastr.label', default: 'GenAcctMastr'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
