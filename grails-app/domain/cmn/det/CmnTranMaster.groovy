package cmn.det

class CmnTranMaster {

    
    String tranCd
    String tranName
    String tranModl
    String tranModlSub
     String delFlg="N"      // Y / N
    String  statsFlg="I"   
    String tranCatId
    
    static constraints = {
        
        
        tranCd(nullable:false,blank:false,unique:true,maxSize:40)
        tranName(nullable:false,blank:false,maxSize:299)
        tranModl(nullable:true,blank:true,maxSize:40)
        tranModlSub(nullable:true,blank:true,maxSize:40)
        tranCatId(nullable:true,blank:true)
        
        statsFlg(nullable:false,blank:false,maxSize:1,inList:["A","I"])
        delFlg(nullable:false,blank:false,maxSize:1,inList:["Y","N","M","I"])
    }
    
     static mapping=
    {
        
        
        columns
        {
            id column:"tran_id"
        }
    }
}
