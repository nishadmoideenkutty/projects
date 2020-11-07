package cmn.det



class CookieController {
    def cookieService
    /**
     *  ajx_ui = user Id
     *  ajx_un = user Name
     *  ajx_mi = menu id
     *	ajx_bi = branch id
     *	ajx_li = location_id
     *	ajx_lt = location type
     *
     *  ajx_cf = create flag
     *  ajx_ef = edit flag
     *  ajx_df = delete flag
     *  ajx_vf = view flag
     *  ajx_af = approve flag*  
     *  ajx_adld = additional data
     *  ajx_ei  =   employee Id
     *  ajx_ed  =   employee designtn
     *  ajx_loccd = Location Name Code
     *  ajx_sdt = server date
     *  ajx_bgthm = Background Theme
     *  ajx_rmd = Reminder ShowOff
     ***/

    def tim=1 * 8 * 60 * 60
//    def tim=60
    def index() { }
    
    /**
     *deleteAllCookie() function for delete all cookies. This mainly use when user logout
     ***/
    def deleteAllCookie()
    {
        
        response.deleteCookie('ajx_ui');
        response.deleteCookie('ajx_un');
        response.deleteCookie('ajx_tp');
        
        response.deleteCookie('ajx_li');
        response.deleteCookie('ajx_ld');        
        
        response.deleteCookie('ajx_cf'); 
        response.deleteCookie('ajx_ef');  
        response.deleteCookie('ajx_df'); 
        response.deleteCookie('ajx_vf');  
        response.deleteCookie('ajx_af');
        response.deleteCookie('ajx_adld');
        response.deleteCookie('ajx_cust');  

        
        response.deleteCookie('ajx_brtyp');
        
		response.deleteCookie('ajx_bi');
		response.deleteCookie('ajx_li');
		response.deleteCookie('ajx_lnf');
		response.deleteCookie('ajx_sdt');
		response.deleteCookie('ajx_loccd');
		response.deleteCookie('ajx_ed');
                response.deleteCookie('ajx_ei');
                
		response.deleteCookie('ajx_bgthm');
                
       response.deleteCookie('ajx_rmd');
        response.deleteCookie('timOut');        
        
    }
    /*
     *userGeneralCookie() function use for add general data like company name and user data into cookie
     **/
    def userGeneralCookie(def user)
    {
//        response.deleteCookie('ajx_sd');
//        response.deleteCookie('ajx_rn');
//        response.deleteCookie('ajx_tp');
//        response.deleteCookie('ajx_li');        
//        response.deleteCookie('ajx_ld');  
//        
//		
//		response.deleteCookie('ajx_lnd');
//		response.deleteCookie('ajx_lnf');
//		
//		response.deleteCookie('ajx_loc');                
//                response.deleteCookie('ajx_rmd');
//                
        response.deleteCookie('ajx_bi');
        
        response.deleteCookie('ajx_ui');
        response.deleteCookie('ajx_un');
        response.deleteCookie('ajx_tp');
        response.deleteCookie('ajx_brtyp');
        response.deleteCookie('ajx_cust');  
		response.setCookie('ajx_sdt',new Date().format("dd/MM/yyyy"),tim)
                response.setCookie('ajx_rmd',"Y",tim)
        
//        def objEmpl=HrEmpMstr.findByEmpUsrId(user.id)
       
        response.setCookie('ajx_ui',user.id.toString(),tim)
       //cookieService.setCookie(name:"ajx_ui", value: user.id.toString(), maxAge: tim, path: "/")
       response.setCookie('ajx_un',user.usrName.toString(),tim)
       response.setCookie('ajx_tp',user.usrType.toString(),tim)
       
       if(user.loctnId)
       response.setCookie('ajx_li',user.loctnId.toString(),tim)
       else
       response.setCookie('ajx_li',"",tim)
       
       if(user?.brnchId)
       {
       response.setCookie('ajx_bi',user?.brnchId.toString(),tim)
       }  
       else
       {
           def objCmnBranchMastr=CmnBranchMastr.findByDelFlgAndStatsFlgAndBranchTyp("N","A","M")
           response.setCookie('ajx_bi',objCmnBranchMastr?.id.toString(),tim)
       }

        
//      if(user?.brnchId)
//       {
//       def tmpObjobjCmnBranchMastr =CmnBranchMastr.get(user?.brnchId.toLong())
//       if(tmpObjobjCmnBranchMastr?.branchTyp)
//       {
//            response.setCookie('ajx_brtyp',tmpObjobjCmnBranchMastr?.branchTyp,tim)
//       }
//       else{
//           response.setCookie('ajx_brtyp',"N",tim)
//       }
//       }
//       else{
//            response.setCookie('ajx_brtyp',"N",tim)
//       }
       
      
        return
    }
    
    /*
     *userRolesCookie() function use for add the roles data into the cookies.
     *this function code is delete the current cookie data and then add the data 
     *adding time we have check the condition for super admin and normal user
     * **/ 
    def userRolesCookie(def usrType,def usrId,def menuId)
    {         
       
        response.deleteCookie('ajx_cf'); 
        response.deleteCookie('ajx_ef');  
        response.deleteCookie('ajx_df'); 
        response.deleteCookie('ajx_vf');  
        response.deleteCookie('ajx_af');
        response.deleteCookie('ajx_adld');  
        response.deleteCookie('htl_md');
        
        response.setCookie('htl_md',menuId.toString(),tim) 
        if(usrType=='Z' || usrType=='z')
        {          
           
            response.setCookie('ajx_cf','Y',tim)
            response.setCookie('ajx_ef','Y',tim)
            response.setCookie('ajx_df','Y',tim)
            response.setCookie('ajx_vf','Y',tim)
            response.setCookie('ajx_af','Y',tim)
          
            
            def menu=CmnMenuMastr.get(menuId.toInteger())
            if(menu.adtnlData!=null)
            response.setCookie('htl_adld',menu.adtnlData,tim)
            else
            response.setCookie('htl_adld','',tim) 
            
            
        }   
        else{
            def menuList
            def strQuery  =  """
                                    SELECT
                                    b.role_id,
                                    c.role_name,
                                    d.role_id as rolId,d.menu_id,d.create_flg,d.edit_flg,d.remove_flg,d.view_flg,d.apprv_flg,d.sub_access,
                                    e.menu_id as menuId,e.menu_name,e.menu_grp_id,e.modl_id,e.class_name,e.adtnl_data,
                                    f.menu_grp_name,
                                    g.modl_name
                                    FROM cmn_usr_mastr a
                                    inner join cmn_usr_role_dtls b on a.usr_id=b.usr_id and b.del_flg='N' and a.del_flg ='N'
                                    inner join cmn_role_mastr c on b.role_id=c.role_id and c.del_flg='N'
                                    inner join cmn_role_dtls d on b.role_id=d.role_id and d.del_flg='N'
                                    inner join cmn_menu_mastr e on d.menu_id=e.menu_id and e.del_flg='N'
                                    inner join cmn_menu_grp_mastr f on e.menu_grp_id=f.menu_grp_id and f.del_flg='N'
                                    inner join cmn_modl_mastr g  on f.modl_id=g.modl_id and g.del_flg='N'
                                    where a.usr_id=${usrId}   and d.menu_id=${menuId} group by e.menu_id
                                """
           
            CmnMenuMastr.withSession
            {
                session ->
                def query=session.createSQLQuery(strQuery)
                menuList=query.list();
            }           
            def results = menuList?.collect {                 
                response.setCookie('ajx_cf',it[4],tim)
                response.setCookie('ajx_ef',it[5],tim)
                response.setCookie('ajx_df',it[6],tim)
                response.setCookie('ajx_vf',it[7],tim)
                response.setCookie('ajx_af',it[8],tim)
                if(it[15]!=null)
                response.setCookie('htl_adld',it[15],tim)
                else
                response.setCookie('htl_adld','',tim)               
            }
        }
       
       
        return ;
    }
    
    
    def reloadCookie()// reload menu with finance
    {
       
    }
}
