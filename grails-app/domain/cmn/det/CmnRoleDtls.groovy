package cmn.det

class CmnRoleDtls {

    
    
    
CmnRoleMastr role
CmnMenuMastr menu
String createFlg='N'
String editFlg='N'
String removeFlg='N'
String viewFlg='N'
String apprvFlg='N'
String subAccess

    
      // common fields        
    String delFlg="N"      // Y / N
    String  statsFlg="A"    // A-Active / I-InActive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date  updtdDate
    
    static belongsTo = [role:CmnRoleMastr]
    
    
    static constraints = {
        
        role(nullable:false,blank:false)
        menu(nullable:false,blank:false)
        createFlg(nullable:false,blank:false,maxSize:2,inList:["N","Y"])
        editFlg(nullable:false,blank:false,maxSize:2,inList:["N","Y"])
        removeFlg(nullable:false,blank:false,maxSize:2,inList:["N","Y"])
        viewFlg(nullable:false,blank:false,maxSize:2,inList:["N","Y"]) 
        apprvFlg(nullable:false,blank:false,maxSize:2,inList:["N","Y"])
        subAccess(nullable:true,maxSize:200)
           
           
        //commomn constraint
        statsFlg(nullable:false,blank:false,maxSize:1,inList:["A","I"])
        delFlg(nullable:false,blank:false,maxSize:2,inList:["Y","N"])
        cretnBy(nullable:false,blank:false)
        cretnDate(nullable:false,blank:false)
        updtdBy(nullable:true)
        updtdDate(nullable:true)
    }
    
    
     static mapping=
    {
        columns
        {
            id column:"role_dtls_id"          
        }
    }
}
