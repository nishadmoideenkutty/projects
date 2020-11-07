package inv.det

class InvCatgryMastr {

    

String catgryCd
String catgryName
Integer parantId

        
     // common fields        
    String delFlg="N"      // Y / N
    String  statsFlg="A"    // A-Active / I-InActive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date  updtdDate
    
    static constraints = {
        
         catgryCd(nullable:true,maxSize:50,unique:true);
         catgryName(nullable:false,blank:false,maxSize:100,unique:'parantId');
         parantId(nullable:true) 
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
            id column:"catgry_id"          
        }
    }
}
