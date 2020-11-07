package cmn.det

class CmnGenSetting {
    
    
    String picType    
    byte[] profPic;
    
    
        String noimageType    
    byte[] noImage;
    
    
    String sesionTimMin
    static constraints = {
        
        profPic (nullable:true)
        picType (nullable:true)
        
         noimageType (nullable:true)
        noImage (nullable:true)
        
        sesionTimMin(nullable:true)
    }
    
    static mapping=
    {
        columns
        {
            id column:"gen_id"
        }
    }
}
