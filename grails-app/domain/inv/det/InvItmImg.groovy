package inv.det

class InvItmImg {

    InvItmMastr  itm
     
    
    String picType    
    byte[] itmPic;
    
    
    
    String delFlg="N"      // Y / N
    String  statsFlg="A"    // M-Main / 
    static constraints = {
        
        
        itm(nullable:false)
        
        itmPic (nullable:true)
        picType (nullable:true)
        statsFlg(nullable:false,blank:false,maxSize:1)
        delFlg(nullable:false,blank:false,maxSize:2,inList:["Y","N"])
    }
    
    static mapping=
    {
        columns
        {
            id column:"img_id"          
        }
    }
}
