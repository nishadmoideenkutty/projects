package cmn.det

class CmnGenState {
    
    
    String code;
    String stateName;
    Integer countryId
    String gstCode
    String delFlg="N"      // Y / N
    String  statsFlg="A"    // A-Active / I-InActive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date  updtdDate
    

    static constraints = {
        
        code(nullable:true,maxSize:100);
        stateName(nullable:false,blank:false,maxSize:200);
        countryId(nullable:true)
        gstCode(nullable:true)
        
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
            id column:"sta_id"          
        }
    }
}
