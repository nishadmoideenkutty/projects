package cmn.det

class CmnUsrMastr {

    String usrCd
    String usrName
    String usrPaswrd
    String usrType
 
    Integer compId
    Integer brnchId
    Integer loctnId
  
    
    String autoLogin
    String forcPaswrdChang
    String isAcctExprd
    String isAcctLockd
    Date nextExpryDate=null;
    String termsAgred
    String bgthm
    String onlineFlg
  
    String delFlg="N"      // Y / N
    String  statsFlg="A"    // A-Active / I-InActive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date  updtdDate
    
    
     String picType    
    byte[] profPic;
    
    
    static constraints = {
        
        usrCd(nullabe:false,blank:false,maxSize:20,unique:true)
        usrName(nullable:false,blank:false,maxSize:100) 
        usrPaswrd(nullable:false,blank:false,maxSize:100)         
        usrType(nullabe:false,blank:false,maxSize:19)
        
        compId(nullable:false)
        brnchId(nullable:true)
        loctnId(nullable:true)
        
        autoLogin(nullable:true,maxSize:1,inList:["Y","N"])
        forcPaswrdChang(nullable:true,maxSize:1,inList:["Y","N"])
        isAcctExprd(nullable:true,maxSize:1,inList:["Y","N"])
        isAcctLockd(nullable:true,maxSize:1,inList:["Y","N"])
        nextExpryDate(nullable:true)
        termsAgred(nullable:true)
        bgthm(nullable:true)
        onlineFlg(nullable:true)
                
        
        profPic (nullable:true)
        picType (nullable:true)
        
        
        //common
        statsFlg(nullable:false,blank:false,maxSize:1,inList:["A","I"])
        delFlg(nullable:false,blank:false,maxSize:1,inList:["Y","N"])
        cretnBy(nullable:false,blank:false)
        cretnDate(nullable:false,blank:false)
        updtdBy(nullable:true)
        updtdDate(nullable:true)
        
    }
    
    static mapping=
    {
        columns
        {
            id column:"usr_id"
        }
    }
    
}
