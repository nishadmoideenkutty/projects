package gen.det


import cmn.det.*;
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON

@Transactional(readOnly = true)
class GenLocMastrController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def jsGridData() {
        
        def aryList = GenLocMastr.createCriteria().list() {
            //                    
            if(params.locCd)
            {
                ilike('locCd', "%${params.locCd}%") 
            }
            if(params.locName)
            {
                ilike('locName', "%${params.locName}%") 
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
        
            
            
                       
        ilike('delFlg', "N")
        ilike('statsFlg', "A")
        order("id", "desc")
        
        
    }
    
      
    def results = aryList?.collect {            
                   
        [ 
            id:it.id,
            locCd:it.locCd,
              locName:it.locName,
            district:it.district?it.district?.districtName:"", 
            state:it.state?it.state?.stateName:"", 
            contry:it.contry?it.contry?.countryName:"",             
        ]
           
    }	
		     
    def jsonData = [rows:results]
    render jsonData as JSON
         
}

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GenLocMastr.list(params), model:[genLocMastrInstanceCount: GenLocMastr.count(),frmName:"Location", subFrmName:"List"]
    }

    def show(GenLocMastr genLocMastrInstance) {
        respond genLocMastrInstance
    }

    def create() {
        respond new GenLocMastr(params),model:[frmName:"Location", subFrmName:"Create",]
    }
    def createModel() {
        respond new GenLocMastr(params),model:[frmName:"Location", subFrmName:"Create"]
    }

    @Transactional
    def save(GenLocMastr genLocMastrInstance) {
        
        GenLocMastr.withTransaction()
        {                        
            status->  
            try{ 
                
            
        if (genLocMastrInstance == null) {
            notFound()
            return
        }

        
         if(!genLocMastrInstance.validate())
                {
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    genLocMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                    respond genLocMastrInstance.errors, view:'create' ,model:[custError:custError,frmName:"Location", subFrmName:"Create"]
                    return
                }
                
        if (genLocMastrInstance.hasErrors()) {
            respond genLocMastrInstance.errors, view:'create'
            return
        }

        genLocMastrInstance.save flush:true

        request.withFormat {
            form multipartForm {
                         flash.message = "Successfully saved"  
                         redirect action: "create", method: "GET"
            }
            '*' { respond genLocMastrInstance, [status: CREATED] }
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
            '*' { respond genLocMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION
        
    }

    def edit(GenLocMastr genLocMastrInstance) {
        respond genLocMastrInstance,model:[frmName:"Location", subFrmName:"Edit"]
    }

    @Transactional
    def update(GenLocMastr genLocMastrInstance) {
        
          GenLocMastr.withTransaction()
        {                        
            status->  
            try{ 
                
            
        if (genLocMastrInstance == null) {
            notFound()
            return
        }

        if (genLocMastrInstance.hasErrors()) {
            respond genLocMastrInstance.errors, view:'edit'
            return
        }

        
         if (!genLocMastrInstance.validate())
                {
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    genLocMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                    respond genLocMastrInstance.errors, view:'edit' ,model:[custError:custError,frmName:"Location", subFrmName:"Edit"]
                    return
                }
                
        genLocMastrInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message="successfully updated"
                        redirect action: "index", method: "GET"
            }
            '*'{ respond genLocMastrInstance, [status: OK] }
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
            '*' { respond genLocMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION
        
    }

    @Transactional
    def delete(GenLocMastr genLocMastrInstance) {

        if (genLocMastrInstance == null) {
            notFound()
            return
        }

        genLocMastrInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GenLocMastr.label', default: 'GenLocMastr'), genLocMastrInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'genLocMastr.label', default: 'GenLocMastr'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    
    def getSateCountry()
    {
         def results
         def objCmnDistrict
         def objCmnState
         def objCmnCountry
       
        if(params.locId)
        {
            def objGenLocMastr = GenLocMastr.findByDelFlgAndId("N",params.locId.toInteger())
            params.district=objGenLocMastr?.district?.id
        }
        
        if(params.district)
        {
            
            objCmnDistrict =CmnGenDistrict.findByIdAndDelFlg(params.district.toLong(),"N")
            
               //println "objCmnDistrict :: "+objCmnDistrict       
               
            
            if(objCmnDistrict?.countryId)
            objCmnCountry=CmnGenCountry.get(objCmnDistrict?.countryId)
            
                   
            if(objCmnDistrict?.stateId)
            objCmnState=CmnGenState.get(objCmnDistrict?.stateId)
            
            results=[
                     "cityId":objCmnDistrict?.id,
                     "districtName":objCmnDistrict?.districtName, 
                     "stateId":objCmnState?.id ,
                     "stateName":objCmnState?.stateName,
                     "gstCode":objCmnState?.gstCode, 
                     "countryId":objCmnCountry?.id, 
                     "countryName":objCmnCountry?.countryName, 
                     "currency":objCmnCountry?.currency, 
                     "symbol":objCmnCountry?.symbol, 
                    ]
            
            
        }
          def jsonData = [rows:results]
        
            render jsonData as JSON
        
        
    }
    
    def getDistStateContryWithLoc()
    {
        if(params.locId)
        {
            
            
        }
        
    }
}
