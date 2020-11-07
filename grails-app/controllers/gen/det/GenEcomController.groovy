package gen.det
import  inv.det.InvItmImg;

import  inv.det.*;
import cmn.det.*;

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON
import hashencode.HashEncode


@Transactional(readOnly = true)
class GenEcomController {
    
    static allowedMethods = [saveCust: "POST", update: "PUT", delete: "DELETE"]
      def genCallService
      def objGenCmnUsrMastr
      
      def beforeInterceptor = {     
          
        if(request.getCookie('ajx_ui'))
        objGenCmnUsrMastr=CmnUsrMastr.get(Integer.parseInt(request.getCookie('ajx_ui')).toLong()) 
        else
        objGenCmnUsrMastr=CmnUsrMastr.get(1.toLong())        
      }
     
    def index() { }
    
    
    def customer()
    {
      
        model:[frmName:"Customer", subFrmName:"Registration"]
    }
    def custLogin()
    {
         model:[frmName:"Customer", subFrmName:"Registration"]
    }
    def category()
    {
         model:[frmName:"Category", subFrmName:"Items"]
    }
    def singlProduct()
    {
         println "sssssssssssssss     "+params
         VItmFullDtls vItmFullDtlsInstance = VItmFullDtls.findByItmId(params.id) 
         model:[vItmFullDtlsInstance:vItmFullDtlsInstance,frmName:"Product", subFrmName:"Description"]
    }
    
    def itmDtls(Integer max)
    { 
        
        
      
         def offst=0
           if(!params.pag)
           {
           offst=1*12
          
           }
           else{
                offst=(params.pag.toInteger()-1)*12
           }
          
//            params.max = Math.min(max ?: params.pag.toInteger()*12, 100)
            def aryList = inv.det.VItmFullDtls.createCriteria().list(max: 12, offset:offst) {                            
               if(params.typData)
               {
                   or{
                      ilike('gentdCd', "%${params.typData}%") 
                      ilike('itmCd', "%${params.typData}%") 
                      ilike('itmBarCd', "%${params.typData}%") 
                      ilike('itmName', "%${params.typData}%") 
                      ilike('alias1', "%${params.typData}%") 
                      ilike('alias2', "%${params.typData}%") 
                      ilike('alias3', "%${params.typData}%") 
                      ilike('catgryName', "%${params.typData}%") 
                      ilike('brandName', "%${params.typData}%")                      
                     }
               }
               
               order("itmId", "desc")  
              
            }
            
        println "wwwwwwwwwwwwwww------------->"+ inv.det.VItmFullDtls.count()
          render(template:"product", model:[result:aryList, itmCount: inv.det.VItmFullDtls.count(),pag:params.pag])
    }
    
    def itmImgShow()
    {
        println "-------------->"+ params.id
        if(params.id)
        {            
                def editImg = InvItmImg.get(params.id.toInteger()) 
                
                response.setContentType(editImg.picType)
                response.setContentLength(editImg.itmPic.size())
                OutputStream out = response.getOutputStream();
                out.write(editImg.itmPic);
                out.close();  
        }
    }
    
      def itmImg()
    {
        println "-------------->"+ params.id
        if(params.id)
        {            
                def editImg = inv.det.VItmFullDtls.findByItmId(params.id.toInteger()) 
                
            
                    if (!editImg || !editImg.picType) {
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
                        response.setContentLength(editImg.itmPic.size())
                        OutputStream out = response.getOutputStream();
                        out.write(editImg.itmPic);
                        out.close();  
                }
        }
    }
    
    
      @Transactional
      def saveCust(GenAcctMastr genAcctMastrInstance) {
        
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
                       respond genAcctMastrInstance.errors, view:'customer' ,model:[custError:custError,frmName:"Customer", subFrmName:"Create"]
                       return
                }

        if (genAcctMastrInstance.hasErrors()) {
            respond genAcctMastrInstance.errors, view:'create'
            return
        }
        if(request.getCookie('ajx_bi'))
        genAcctMastrInstance.acctCd = genCallService.tranNumGenerationSave("CU",request.getCookie('ajx_bi') );
        else
        genAcctMastrInstance.acctCd = genCallService.tranNumGenerationSave("CU",1);
        
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
                objCmnUsrMastr?.loctnId=genAcctMastrInstance?.id
                objCmnUsrMastr?.cretnBy=genAcctMastrInstance?.id
                objCmnUsrMastr?.cretnDate=new Date()
                if(!objCmnUsrMastr.validate())               
                {
                    println objCmnUsrMastr.errors
                    def custError=[]         
                    status.setRollbackOnly();
                    objCmnUsrMastr.errors.allErrors.eachWithIndex { it,i ->  custError[i] = message(code: it.defaultMessage ,args:[message(code:it.field)] ) ; }                                                                                        
                     respond genAcctMastrInstance.errors, view:'customer' ,model:[custError:custError,frmName:"Customer", subFrmName:"Create"]
                    return
                }
                objCmnUsrMastr.save flush:true
            }
        }

        request.withFormat {
            form multipartForm {
                         flash.message = "Registration Completed"                     
                         redirect controller:"login" ,action: "doLoginCust", method: "GET",params:["usrCd":genAcctMastrInstance?.mobl,"paswrd":params.paswrd]
                        
                        
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
                         redirect controller:"genEcom" ,action: "customer", method: "GET"
                         return
                    }
            '*' { respond genAcctMastrInstance, [status: CREATED] }
                }
                
            }//END CATCH
        }//END TRANSACTION
        
    }
    
    
}
