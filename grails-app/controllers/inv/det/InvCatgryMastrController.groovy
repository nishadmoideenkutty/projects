package inv.det



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import java.text.DateFormat
import java.text.SimpleDateFormat
import org.springframework.dao.DataIntegrityViolationException
import grails.converters.JSON
import javax.servlet.http.Cookie



class InvCatgryMastrController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def genCallService
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond InvCatgryMastr.list(params), model:[invCatgryMastrInstanceCount: InvCatgryMastr.count(),frmName:"Category",subFrmName:"List"]
    }

    def show(InvCatgryMastr invCatgryMastrInstance) {
        respond invCatgryMastrInstance
    }
 def jsGridData() {
         
        def aryList = InvCatgryMastr.createCriteria().list() {
                                
            if(params.catgryCd)
            {
                ilike('catgryCd', "%${params.catgryCd}%") 
            }            
            if(params.catgryName)
            {
                ilike('catgryName', "%${params.catgryName}%") 
            }
          
            if(params.parantId)
            {
                eq('parantId',params.parantId.toInteger()) 
            }
                                                               
            ilike('delFlg', "N")
            ilike('statsFlg', "A")
            order("id", "desc")
        } 
        
        def results = aryList?.collect {  
//            def objParent 
//                   if(it.parantId!=0 && it.parantId && it.parantId!="null" && it.parantId!=null)
//                   objParent=InvCatgryMastr.get(it.parantId.toLong())                               
//            println objParent
            [ 
                id:it.id,
                catgryCd:it.catgryCd,
                catgryName:it.catgryName,
                parantId:it.parantId,
//                parentName:objParent?objParent?.catgryName:"Parents"
            ]
           
        }	
		     
        def jsonData = [rows:results]
        render jsonData as JSON
        
        
    }
    def create() {
        // def result=getParantCatgoryTmp()
        def invCatgryMastrInstance = new InvCatgryMastr(params)
        //invCatgryMastrInstance.catgryCd = genCallService.tranNumGenerationShow("CAT",request.getCookie('cvr_bhd') );
        respond invCatgryMastrInstance, model:[frmName:"Category",subFrmName:"Create" ]
    }

    @Transactional
    def save(InvCatgryMastr invCatgryMastrInstance) {
            
        InvCatgryMastr.withTransaction()
        {
            status-> 
          
            
            try{
                if (invCatgryMastrInstance == null) {
                    notFound()
                    return
                }
                // //println "invCatgryMastrInstance---------------------------------"+ invCatgryMastrInstance
      
                //       if(!invCatgryMastrInstance.validate())
                //       {
                //           //println "invCatgryMastrInstance.errors-------------"+invCatgryMastrInstance.errors
                //       }
                if (!invCatgryMastrInstance.validate()) {
                    // //println invCatgryMastrInstance.errors
                    def custError=[]           
                    invCatgryMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ;                                                                                                                           }                                                      
                    if(params.catgryModal)  
                    {            
                        render(template:"/cmnCommon/msgAlert",model:[warning:custError])
                    }
                    else{
                        respond invCatgryMastrInstance.errors, view:'create' ,model:[custError:custError,frmName:"Category", subFrmName:"Create"]
                    }                                               
                    return
                }
                if (invCatgryMastrInstance.hasErrors()) {
                    //println invCatgryMastrInstance.errors
                    def custError=[]           
                    invCatgryMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ;                                                                                                                           }                                                      
                    respond invCatgryMastrInstance.errors, view:'create' ,model:[custError:custError]
                    return
                }
               // invCatgryMastrInstance.catgryCd = genCallService.tranNumGenerationSave("CAT",request.getCookie('cvr_bhd') );
                invCatgryMastrInstance.save flush:true

                
                if(params.catgryModal)        
                {            
                    render(template:"/cmnCommon/msgAlert",model:[success: "Successfully Saved"])
                }
                else{
            
        
                    request.withFormat {
                        form multipartForm {
                            // flash.message = message(code: 'default.created.message', args: [message(code: 'invCatgryMastrInstance.label', default: 'InvCatgryMastr'), invCatgryMastrInstance.id])
                            flash.message="You have saved category name ${invCatgryMastrInstance.catgryName}"
                            // redirect invCatgryMastrInstance
                            redirect action: "create", method: "GET"
                        }
            '*' { respond invCatgryMastrInstance, [status: CREATED] }
                    }
                }
        
                
            }
            catch(Exception e)
            {
                
                status.setRollbackOnly();
                request.withFormat {
                    form multipartForm {
                        flash.error = "Try Again..."+e
                        // redirect invSalesMastrInstance
                        redirect action: "create", method: "GET"
                    }
            '*' { respond invCatgryMastrInstance, [status: CREATED] }
                }
                
            }
        }
    }

    def edit(InvCatgryMastr invCatgryMastrInstance) {
        respond invCatgryMastrInstance
    }

    @Transactional
    def update(InvCatgryMastr invCatgryMastrInstance) {
        InvCatgryMastr.withTransaction()
        {
            status->                       
            try{
                if (invCatgryMastrInstance == null) {
                    notFound()
                    return
                }  
                if (!invCatgryMastrInstance.validate()) {
                    //println invCatgryMastrInstance.errors
                    def custError=[]           
                    invCatgryMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ;                                                                                                                           }                                                      
                    respond invCatgryMastrInstance.errors, view:'edit' ,model:[custError:custError]
                    return
                }
                if (invCatgryMastrInstance.hasErrors()) {
                    //println invCatgryMastrInstance.errors
                    def custError=[]           
                    invCatgryMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ;                                                                                                                           }                                                      
                    respond invCatgryMastrInstance.errors, view:'edit' ,model:[custError:custError]
                    return
                }

                invCatgryMastrInstance.save flush:true

                request.withFormat {
                    form multipartForm {
                        //  flash.message = message(code: 'default.updated.message', args: [message(code: 'InvCatgryMastr.label', default: 'InvCatgryMastr'), invCatgryMastrInstance.id])
                        flash.message="You have updated category  name ${invCatgryMastrInstance.catgryName}"
                        //redirect invCatgryMastrInstance
                        redirect action: "create", method: "GET"
                    }
            '*'{ respond invCatgryMastrInstance, [status: OK] }
                }
            }
            catch(Exception e)
            {
                
                status.setRollbackOnly();
                request.withFormat {
                    form multipartForm {
                        flash.error = "Try Again..."+e
                        // redirect invSalesMastrInstance
                        redirect action: "edit", method: "GET"
                    }
            '*' { respond invCatgryMastrInstance, [status: CREATED] }
                }
                
            }
        }
    }

    @Transactional
    def delete(InvCatgryMastr invCatgryMastrInstance) {

        if (invCatgryMastrInstance == null) {
            notFound()
            return
        }
        def cateParant=InvCatgryMastr.createCriteria().list()
        {
            eq("parantId",invCatgryMastrInstance.id.toInteger())
            ilike("delFlg","N")
        }
        // //println "cateParant----------"+cateParant.size() +"------------------"+cateParant
        for(int i=0;i<cateParant.size();i++)
        {
            // //println "--------cateParant[i].id----------------"+cateParant[i].id
            def itm=InvItmMastr.createCriteria().list() 
            {
                catgry{
                    eq("id",cateParant[i].id.toInteger().longValue())
                }
                ilike("delFlg",'N')
            }
            // //println "--------itm----------------"+ itm.size() +"---------------------------"+itm
            if(itm.size()>0)
            {
                flash.error = "Catagory or Subcategory used in item "
                respond invCatgryMastrInstance.errors, view:'create'
                return
            }
        }
        //         def itm2=InvItmMastr.createCriteria().list() 
        //            {
        //                catgry{
        //                    eq("id",invCatgryMastrInstance.id)
        //                }
        //                ilike("delFlg",'N')
        //            }
        //             if(itm2.size()>0)
        //            {
        //             flash.error = "Catagory or Subcategory used in item "
        //             respond invCatgryMastrInstance.errors, view:'create'
        //             return
        //            }
        invCatgryMastrInstance.delete(flush:true)                          
        def strQry=""" delete from inv_catgry_mastr  where parant_id=${invCatgryMastrInstance.id} and del_flg='N' """
        InvCatgryMastr.withSession
        {
            session ->
            def query1=session.createSQLQuery(strQry)
            query1.executeUpdate()
        }       

        request.withFormat {
            form multipartForm {
                // flash.message = message(code: 'default.deleted.message', args: [message(code: 'InvCatgryMastr.label', default: 'InvCatgryMastr'), invCatgryMastrInstance.id])
                flash.message="You have deleted category name ${invCatgryMastrInstance.catgryName}"
                // redirect action:"index", method:"GET"
                redirect action: "create", method: "GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'invCatgryMastrInstance.label', default: 'InvCatgryMastr'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    
    
    def getParantCatgoryTmp()
    {
       
        def catgryId=0               
        def parentCatgry = InvCatgryMastr.createCriteria().list(){
            eq('parantId',catgryId)
            ilike('delFlg', "N")
        }
        def results = parentCatgry?.collect {   
            [                
                id:it.id,
                text:it.catgryName ,
                catgryCd:it.catgryCd ,
                nodes:getChild(it.id)
                  
            ]
        }
        ////println "--------results---------------:: "+results
        return results 
    }
    
    def getParantCatgory()
    {
       
        def catgryId=0               
        def parentCatgry = InvCatgryMastr.createCriteria().list(){
            eq('parantId',catgryId)
            ilike('delFlg', "N")
        }
        def results = parentCatgry?.collect {   
            [                
                id:it.id,
                text:it.catgryName ,
                catgryCd:it.catgryCd ,
                nodes:getChild(it.id)
                  
            ]
        }
        ////println "--------results---------------:: "+results
        render results as JSON
    }
    def getChild(def catId)
    {
        // //println "---------getChild------------"+params
        def catgryId=catId.toInteger();             
        def childCatgry = InvCatgryMastr.createCriteria().list(){
            eq('parantId',catgryId)
            ilike('delFlg', "N")
        }
        def results = childCatgry?.collect {   
            [                
                id:it.id,
                text:it.catgryName ,
                catgryCd:it.catgryCd ,
                nodes:getChild(it.id)
            ]
        }
         
        return results 
    }
    def redirectFunction(InvCatgryMastr invCatgryMastrInstance1)
    {
       
         
         
         
       
         
         
        if((params.updateBtn==null || params.updateBtn=='null') && (params.deleteBtn==null || params.deleteBtn=='null')) //** checking whether the update button is pressed or not 
        {
            ////println "-----------SAve-----------------"+params
            InvCatgryMastr invCatgryMastrInstance = new InvCatgryMastr(params)
            invCatgryMastrInstance.catgryCd=params.catgryCd
            invCatgryMastrInstance.catgryName=params.catgryName
            if(params.catgryIdTmp)
            invCatgryMastrInstance.parantId=params.catgryIdTmp.toInteger();
            else
            invCatgryMastrInstance.parantId=0;
            invCatgryMastrInstance.cretnBy=request.getCookie('cvr_sd').toInteger()
            invCatgryMastrInstance.cretnDate= new Date();
            invCatgryMastrInstance.updtdBy=0
            invCatgryMastrInstance.updtdDate=new Date();
                      
            save(invCatgryMastrInstance) //** sending controle to save 
            return
        }
        else if((params.createBtn==null || params.createBtn=='null' ) &&( params.deleteBtn==null || params.deleteBtn=='null'))
        {
            // //println "-----------Update-----------------"+params
            InvCatgryMastr invCatgryMastrInstance = InvCatgryMastr.get(params.catgryIdTmp.toInteger()) 
            invCatgryMastrInstance.catgryCd=params.catgryCd
            invCatgryMastrInstance.catgryName=params.catgryName                                                                
            invCatgryMastrInstance.updtdBy=request.getCookie('cvr_sd').toInteger()
            invCatgryMastrInstance.updtdDate=new Date();
            update(invCatgryMastrInstance) //** sending controle to update 
            return
        }
        else{
            InvCatgryMastr invCatgryMastrInstance = InvCatgryMastr.get(params.catgryIdTmp.toInteger())                                            
            delete(invCatgryMastrInstance)
        }
    }
    
    
    
     @Transactional
     def delete1() {
       println "delete"+params.id
        
       try{
        def invCatgryMastrInstance=InvCatgryMastr.get(params.id.toLong())
        
        def  aryInvItmMastr = InvItmMastr.findAllByDelFlgAndCatgry("N",invCatgryMastrInstance)
      
        if(aryInvItmMastr && aryInvItmMastr.size()>0)
        {
                flash.errors = "Could not delete this category..used another transaction! "
                redirect action:"index", method:"GET"
                return
        }
      
        
        if(invCatgryMastrInstance.delete () )
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