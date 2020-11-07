package com.ajx.cmn.security

import org.hibernate.*
import com.ajx.cmn.det.*;

import javax.servlet.http.Cookie;
import java.text.SimpleDateFormat
import java.text.DateFormat;
import java.util.Date;
import java.util.TimeZone;

import static java.util.concurrent.TimeUnit.*;
import static grails.async.Promises.*;


class AppSecurityFilters {
    //def custError
	def filters = {
            
       
		loginCheck(controller: '*', action: '*') {
			
			
                     
			before = {
//                            println "Action Name --->>> "+ controllerName
                        if ( controllerName.equals("genEcom") || controllerName.equals("cmnApi") ||  (!actionName && !controllerName ) ||   (  actionName.equals("doLogin") || actionName.equals("signIn") || actionName.equals("index") || actionName.equals("acceptAgrement")  ) &&   ( controllerName.equals("user") || controllerName.equals("login") || controllerName.equals("assets"))  || controllerName.equals("genEcom") )   {
                                                 }
                                                 else{
                                                     
                  
                                                                    if(!request.getCookie('ajx_ui'))
                                                                        {	       
                                                                           println "-----------------xxx ->>>>"+ request.getCookie('ajx_ui')
                                                                           redirect(uri: "/")   
                                                                           return
                                                                        }
                                                                        if(actionName.contains("save"))
                                                                        {
                                                                        params.cretnBy=request.getCookie('ajx_ui')
                                                                        params.cretnDate=new Date();
                                                                        }
                                                                        if(actionName.contains("update"))
                                                                        {
                                                                        params.updtdBy=request.getCookie('ajx_ui')
                                                                        params.updtdDate=new Date();
                                                                        }
                                                 }
//                          
//                            if ((actionName.equals("doLogin") || actionName.equals("login") || actionName.equals("index") || actionName.equals("acceptAgrement")  ) &&   ( controllerName.equals("user") || controllerName.equals("login") || controllerName.equals("assets"))   )   {
//                                 
//							}
//                                else 
//                                {
//					  println "Here 2"				
//                                    if(request.getCookie('htl_sd')==null)
//                                    {										                                       
//                                       redirect(uri:"/")
//                                       return false
//                                    }
//                                    else{
//                                        
//
//                        
//                        
//                                    }
//									
//                                }

                
//                            if (!request.getCookie('htl_sd') && !actionName.equals('login')) {
//                                                    redirect(controller:'login',action: 'login')
//                                                    return false
//                                                     }
//                                println request.getCookie('htl_sd')   
                                
                               

			}
                        after={       
                                                        
//							response.deleteCookie('htl_sdt');
//							Date localTime = new Date();							
//							DateFormat  converter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss")
//							converter.setTimeZone(TimeZone.getTimeZone("Asia/Calcutta"));							
//							def tim=1 * 1 * 60 * 60
//							response.setCookie('htl_sdt',converter.format(localTime),tim)                                                        
                                                                        
				}
						
					
		
                }
			
		}
                  
	}
        

