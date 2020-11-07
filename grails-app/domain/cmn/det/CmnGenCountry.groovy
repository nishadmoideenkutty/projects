package cmn.det

class CmnGenCountry {

   String code;
   String countryName;
   String currency;
   String symbol;
    
    
    String delFlg="N"      // Y / N
    String  statsFlg="A"    // A-Active / I-InActive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date  updtdDate
    

    static constraints = {
        
        code(nullable:true,maxSize:100);
        countryName(nullable:false,blank:false,maxSize:200);
        
        currency(nullable:true,maxSize:100);
         symbol(nullable:true,maxSize:100);
        
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
            id column:"con_id"          
        }
    }
}
