package gen.det

import cmn.det.*;
class GenLocMastr {

    
    String locName
    String locCd
    
    
    CmnGenDistrict district
    CmnGenState state
    CmnGenCountry contry
    
    
    String delFlg="N"      // Y / N
    String  statsFlg="A"    // A-Active / I-InActive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date  updtdDate
    
    static constraints = {
        
        
        locCd(nullable:true,maxSize:100,unique:true);
        locName(nullable:false,blank:false,maxSize:200,unique: 'district');
          
        district(nullable:true,blank:true);
        state(nullable:true,blank:true);
        contry(nullable:true,blank:true);
        
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
            id column:"loc_id"          
        }
    }
}
