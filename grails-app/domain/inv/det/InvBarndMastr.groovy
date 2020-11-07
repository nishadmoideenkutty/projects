package inv.det

class InvBarndMastr {

    String brandCd
    String brandName
    String companyName
 
    
     String delFlg="N"      // Y / N
    String  statsFlg="A"    // A-Active / I-InActive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date  updtdDate
    
    String getBrandAndBrandCd() { "$brandName  [$brandCd]"  }
    
    static transients = ['brandAndBrandCd']
    
    static constraints = {
        
        brandCd(nullable:false,blank:false,maxSize:100,unique:true)
         brandName(nullable:false,blank:false,maxSize:200,unique:true)
          companyName(nullable:true,blank:true,maxSize:200)
           
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
            id column:"brand_id"          
        }
    }
}
