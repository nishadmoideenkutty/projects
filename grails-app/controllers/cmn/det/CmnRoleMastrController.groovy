package cmn.det



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON

@Transactional(readOnly = true)
class CmnRoleMastrController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def module
    def grpMenu
    def mainMenu
    def dashboradMenu
    def beforeInterceptor = {  
    
        module=getModuleDtls();
        grpMenu=getGrpDtls();
        mainMenu=getMainMenu();
        dashboradMenu=getDashBoardMenu();
        
    }
    
    
    def getModuleDtls()
    {
        def aryColCmnModlMastr=CmnModlMastr.findAllByDelFlgAndStatsFlg("N","A")
        return aryColCmnModlMastr;
    }
    def getGrpDtls()
    {
        def aryColCmnMenuGrpMastr=CmnMenuGrpMastr.findAllByDelFlgAndStatsFlg("N","A")
        return aryColCmnMenuGrpMastr;
    }    
    def getMainMenu()
    {
        def aryColCmnMenuMastr= CmnMenuMastr.findAllByDelFlgAndStatsFlg("N","A")
        return aryColCmnMenuMastr;
    }
    def getDashBoardMenu()
    {
        def aryColCmnMenuMastr= CmnMenuMastr.findAllByDelFlgAndStatsFlg("N","D")
        return aryColCmnMenuMastr;
    }
    
    
    
    
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CmnRoleMastr.list(params), model:[cmnRoleMastrInstanceCount: CmnRoleMastr.count(),frmName:"Role", subFrmName:"List"]
    }
    def jsGridData() {
         
        def postDtls = CmnRoleMastr.createCriteria().list() {
                    
            if(params.roleName)
            {
                ilike('roleName', "%${params.roleName}%") 
            }
           if(params.roleCd)
            {
                ilike('roleCd', "%${params.roleCd}%") 
            }
            ilike('delFlg', "N")
            ilike('statsFlg', "A")
            order("id", "desc")
            maxResults(500)
        
        }

        //        def totalRows = postDtls.totalCount
        //        def numberOfPages = Math.ceil(totalRows / maxRows)
        def results = postDtls?.collect {   
            // println "it.telNo----------------"+it.brnchCd
                   
            [ 
                id:it.id,
                roleName:it.roleName,  
                roleCd: it.roleCd == null || it.roleCd==""?"":it.roleCd,  
            ]
           
        }	

		
        // println "results---"+results
        def jsonData = [rows:results]
        render jsonData as JSON
         
    }
    def show(CmnRoleMastr cmnRoleMastrInstance) {
        respond cmnRoleMastrInstance
    }

    def create() {
        
       
        respond new CmnRoleMastr(params),model:[module:module,grpMenu:grpMenu,mainMenu:mainMenu,dashboradMenu:dashboradMenu,frmName:"Role", subFrmName:"Create"]
    }

    @Transactional
    def save(CmnRoleMastr cmnRoleMastrInstance) {
        
        
        CmnRoleMastr.withTransaction()
        {                        
            status->  
            try{ 
                
            
                if (cmnRoleMastrInstance == null) {
                    notFound()
                    return
                }
        
                def dashmenu= CmnMenuMastr.findAllByStatsFlgAndDelFlg('D','N',[sort: "id", order: "asc"]);
                for(int i=0;i<dashmenu.size();i++)
                {                           
                    def cmnRoleDtlsInstance = new CmnRoleDtls()
                    //cmnRoleDtlsInstance.role=CmnRoleMastr.get(cmnRoleMastrInstance.id)
               
                    if(params.get("viewFlg_"+dashmenu.id[i])=='on')
                    {                
                        cmnRoleDtlsInstance.menu=CmnMenuMastr.get(params.get("menuId_"+dashmenu.id[i]))
                
                        if(params.get("viewFlg_"+dashmenu.id[i])=='on')
                        {
                            cmnRoleDtlsInstance.viewFlg='Y'
                        }
               
                        cmnRoleDtlsInstance.cretnBy=request.getCookie('ajx_ui').toInteger();
                        cmnRoleDtlsInstance.cretnDate=new Date();           
                        cmnRoleDtlsInstance.updtdBy=0
                        cmnRoleDtlsInstance.updtdDate=new Date(); 
                        cmnRoleMastrInstance.addToRolDtls(cmnRoleDtlsInstance);
                
                    }                               
                } 
        
                
                def menu= CmnMenuMastr.findAllByStatsFlgAndDelFlg('A','N',[sort: "id", order: "asc"]);
                for(int i=0;i<menu.size();i++)
                {                           
                    def cmnRoleDtlsInstance = new CmnRoleDtls()
                    //cmnRoleDtlsInstance.role=CmnRoleMastr.get(cmnRoleMastrInstance.id)
               
                    if(params.get("createFlg_"+menu.id[i])=='on' || params.get("editFlg_"+menu.id[i])=='on' || params.get("deleteFlg_"+menu.id[i])=='on' || params.get("viewFlg_"+menu.id[i])=='on' || params.get("approvFlg_"+menu.id[i])=='on' )
                    {                
                        cmnRoleDtlsInstance.menu=CmnMenuMastr.get(params.get("menuId_"+menu.id[i]))
                        if(params.get("createFlg_"+menu.id[i])=='on')
                        {
                            cmnRoleDtlsInstance.createFlg='Y'
                        }
                        if(params.get("editFlg_"+menu.id[i])=='on')
                        {
                            cmnRoleDtlsInstance.editFlg='Y'
                        }
                        if(params.get("deleteFlg_"+menu.id[i])=='on')
                        {
                            cmnRoleDtlsInstance.removeFlg='Y'
                        }
                        if(params.get("viewFlg_"+menu.id[i])=='on')
                        {
                            cmnRoleDtlsInstance.viewFlg='Y'
                        }
                        if(params.get("approvFlg_"+menu.id[i])=='on')
                        {
                            cmnRoleDtlsInstance.apprvFlg='Y'
                        }
                        cmnRoleDtlsInstance.cretnBy=request.getCookie('ajx_ui').toInteger();
                        cmnRoleDtlsInstance.cretnDate=new Date();           
                        cmnRoleDtlsInstance.updtdBy=0
                        cmnRoleDtlsInstance.updtdDate=new Date(); 
                        cmnRoleMastrInstance.addToRolDtls(cmnRoleDtlsInstance);
                
                    }                               
                } 
        
                cmnRoleMastrInstance.cretnBy =request.getCookie('ajx_ui').toInteger();
                cmnRoleMastrInstance.cretnDate = new Date();           
                cmnRoleMastrInstance.updtdBy=0
                cmnRoleMastrInstance.updtdDate=new Date(); 
                if (!cmnRoleMastrInstance.validate())
                {
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    cmnRoleMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                    respond cmnRoleMastrInstance.errors, view:'create' ,model:[custError:custError,module:module,grpMenu:grpMenu,mainMenu:mainMenu,dashboradMenu:dashboradMenu,frmName:"Role", subFrmName:"Create"]
                    return
                }
        
                
                
        
                if (cmnRoleMastrInstance.hasErrors()) {
                    respond cmnRoleMastrInstance.errors, view:'create',model:[module:module,grpMenu:grpMenu,mainMenu:mainMenu,dashboradMenu:dashboradMenu,frmName:"Role", subFrmName:"Create"]
                    return
                }

                cmnRoleMastrInstance.save flush:true

                request.withFormat {
                    form multipartForm {

                        flash.message = "Successfully saved"  
                        redirect action: "create", method: "GET"
                    }
            '*' { respond cmnRoleMastrInstance, [status: CREATED] }
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
            '*' { respond cmnRoleMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION
    }

    def edit(CmnRoleMastr cmnRoleMastrInstance) {
               
        cmnRoleMastrInstance.rolDtls=CmnRoleDtls.createCriteria().list()
        {
            eq("delFlg","N")
            eq("statsFlg","A")
            eq("role.id",cmnRoleMastrInstance.id)
        }
       // println "cmnRoleMastrInstance.rolDtls "+cmnRoleMastrInstance.rolDtls                   
        respond cmnRoleMastrInstance,model:[module:module,grpMenu:grpMenu,mainMenu:mainMenu,dashboradMenu:dashboradMenu,frmName:"Role", subFrmName:"Edit"]
    }

    @Transactional
    def update(CmnRoleMastr cmnRoleMastrInstance) {
        
        CmnRoleMastr.withTransaction()
        {                        
            status->  
            try{ 
                if (cmnRoleMastrInstance == null) {
                    notFound()
                    return
                }
                //        if(params.update==null || params.update=='null') //** checking whether the update button is pressed or not 
                //            {
                //                delete(cmnRoleMastrInstance) //** sending controle to delete 
                //                return
                //            }
                
                def strQuery=""" delete from  cmn_role_dtls  where role_id = ${cmnRoleMastrInstance.id} and del_flg='N' """                     
                CmnRoleDtls.withSession
                {
                    session ->
                    def query=session.createSQLQuery(strQuery)
                    query.executeUpdate()
                }
                        
                def dashmenu= CmnMenuMastr.findAllByStatsFlgAndDelFlg('D','N',[sort: "id", order: "asc"]);
                for(int i=0;i<dashmenu.size();i++)
                {                           
                    def cmnRoleDtlsInstance = new CmnRoleDtls()
                    //cmnRoleDtlsInstance.role=CmnRoleMastr.get(cmnRoleMastrInstance.id)
               
                    if(params.get("viewFlg_"+dashmenu.id[i])=='on')
                    {                
                        cmnRoleDtlsInstance.menu=CmnMenuMastr.get(params.get("menuId_"+dashmenu.id[i]))
                
                        if(params.get("viewFlg_"+dashmenu.id[i])=='on')
                        {
                            cmnRoleDtlsInstance.viewFlg='Y'
                        }
               
                        cmnRoleDtlsInstance.cretnBy=request.getCookie('ajx_ui').toInteger();
                        cmnRoleDtlsInstance.cretnDate=new Date();           
                        cmnRoleDtlsInstance.updtdBy=0
                        cmnRoleDtlsInstance.updtdDate=new Date(); 
                        cmnRoleMastrInstance.addToRolDtls(cmnRoleDtlsInstance);
                
                    }                               
                } 
        
                
                def menu= CmnMenuMastr.findAllByStatsFlgAndDelFlg('A','N',[sort: "id", order: "asc"]);
                for(int i=0;i<menu.size();i++)
                {                           
                    def cmnRoleDtlsInstance = new CmnRoleDtls()
                    //cmnRoleDtlsInstance.role=CmnRoleMastr.get(cmnRoleMastrInstance.id)
               
                    if(params.get("createFlg_"+menu.id[i])=='on' || params.get("editFlg_"+menu.id[i])=='on' || params.get("deleteFlg_"+menu.id[i])=='on' || params.get("viewFlg_"+menu.id[i])=='on' || params.get("approvFlg_"+menu.id[i])=='on' )
                    {                
                        cmnRoleDtlsInstance.menu=CmnMenuMastr.get(params.get("menuId_"+menu.id[i]))
                        if(params.get("createFlg_"+menu.id[i])=='on')
                        {
                            cmnRoleDtlsInstance.createFlg='Y'
                        }
                        if(params.get("editFlg_"+menu.id[i])=='on')
                        {
                            cmnRoleDtlsInstance.editFlg='Y'
                        }
                        if(params.get("deleteFlg_"+menu.id[i])=='on')
                        {
                            cmnRoleDtlsInstance.removeFlg='Y'
                        }
                        if(params.get("viewFlg_"+menu.id[i])=='on')
                        {
                            cmnRoleDtlsInstance.viewFlg='Y'
                        }
                        if(params.get("approvFlg_"+menu.id[i])=='on')
                        {
                            cmnRoleDtlsInstance.apprvFlg='Y'
                        }
                        cmnRoleDtlsInstance.cretnBy=request.getCookie('ajx_ui').toInteger();
                        cmnRoleDtlsInstance.cretnDate=new Date();           
                        cmnRoleDtlsInstance.updtdBy=0
                        cmnRoleDtlsInstance.updtdDate=new Date(); 
                        cmnRoleMastrInstance.addToRolDtls(cmnRoleDtlsInstance);
                
                    }                               
                } 
        
                cmnRoleMastrInstance.cretnBy =request.getCookie('ajx_ui').toInteger();
                cmnRoleMastrInstance.cretnDate = new Date();           
                cmnRoleMastrInstance.updtdBy=0
                cmnRoleMastrInstance.updtdDate=new Date(); 
                if (!cmnRoleMastrInstance.validate())
                {
               
                    /*
                     *Error throw from controller 
                     *custError array to palce the multiple errors
                     *main.gsp use above variable to show the throw massage
                     **/
                    def custError=[]         
                    status.setRollbackOnly();
                    cmnRoleMastrInstance.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                   
                    respond cmnRoleMastrInstance.errors, view:'edit' ,model:[custError:custError,module:module,grpMenu:grpMenu,mainMenu:mainMenu,dashboradMenu:dashboradMenu,frmName:"Role", subFrmName:"Edit"]
                    return
                }        
                if (cmnRoleMastrInstance.hasErrors()) {
                    respond cmnRoleMastrInstance.errors, view:'edit'
                    return
                }

                cmnRoleMastrInstance.save flush:true

                request.withFormat {
                    form multipartForm {

                        flash.message="successfully updated"
                        redirect action: "index", method: "GET"
                            
                    }
            '*'{ respond cmnRoleMastrInstance, [status: OK] }
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
            '*' { respond cmnRoleMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION      
    }

    @Transactional
    def delete(CmnRoleMastr cmnRoleMastrInstance) {

        if (cmnRoleMastrInstance == null) {
            notFound()
            return
        }

        cmnRoleMastrInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CmnRoleMastr.label', default: 'CmnRoleMastr'), cmnRoleMastrInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cmnRoleMastr.label', default: 'CmnRoleMastr'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
