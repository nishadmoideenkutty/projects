package cmn.det


import hashencode.HashEncode


class LoginController {

    def signIn() { 
    
    
    }
    
    def doLogin={

        try {
            
            HashEncode objEncode=new HashEncode()
           
            params.password=objEncode.md5Java(params.password)  
            println "@PP :: "+params.password
            def user  = CmnUsrMastr.findByUsrCdAndUsrPaswrdAndDelFlgAndStatsFlg(params.usrCd,params.password,"N","A")
           
          
            if(user)
            {
              
                  println "@UUU :: "+user
                def objCookieController = new CookieController();
                objCookieController.userGeneralCookie(user)       
                println "-----------------LOGIN-->>>>>>>>>>>>>>> " + request.getCookie('ajx_ui');
              
                redirect(controller:"dashboard",action:"index")                
            }
            else{
              
                flash.message="Sorry,Invalid User Name or Password "  
                redirect(action:"signIn")
            }
                 	             
        } catch (Exception e) {
           println e
        }
    }
    
     def doLoginCust={

        try {
            
            HashEncode objEncode=new HashEncode()
           
            params.password=objEncode.md5Java(params.password)  
            println "@PP :: "+params.password
            def user  = CmnUsrMastr.findByUsrCdAndUsrPaswrdAndDelFlgAndStatsFlg(params.usrCd,params.password,"N","A")
           
          
            if(user)
            {
              
                  println "@UUU :: "+user
                def objCookieController = new CookieController();
                objCookieController.userGeneralCookie(user)       
                
                if(user?.usrType=="CU")
                {
                    
                response.setCookie('ajx_cust',user.loctnId.toString(),tim)
                redirect(uri: "/") 
                return
                }
                else
                {
                redirect(controller:"dashboard",action:"index")           
                return
                }
            }
            else{
              
                flash.error="Sorry,Invalid User Name or Password "  
                redirect(uri: "/")
                return
            }
                 	             
        } catch (Exception e) {
           println e
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
    
     def logOut={
        
        try {
            def usrId=request.getCookie('ajx_ui').toInteger();
            def usrObj=CmnUsrMastr.get(usrId)
            usrObj.onlineFlg="N"
            usrObj.save flush:true
		
            def objCookieController =new  CookieController()
            objCookieController.deleteAllCookie();
            session.invalidate();
            redirect(uri: "/")          
        } catch (Exception e) {
           
        }
    }
    
}
