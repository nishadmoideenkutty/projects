package cmn.det

class CmnUsrRoleDtls {

    
    
CmnUsrMastr usr
int compId

CmnRoleMastr role
String remrks

    
    // common fields        
    String delFlg="N"      // Y / N
    String  statsFlg="A"    // A-Active / I-InActive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date  updtdDate
    static belongsTo = [usr:CmnUsrMastr]
    static constraints = {
        
          usr(nullable:false,blank:false)
          compId(nullable:true,blank:true)
         
          role(nullable:false,blank:false)
          remrks(nullable:true,maxSize:500)
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
            id column:"usr_role_id"  
            role lazy:false
        }
    }
}
