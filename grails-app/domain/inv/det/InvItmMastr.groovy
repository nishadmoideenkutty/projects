package inv.det

class InvItmMastr {

    String  gentdCd
    String  itmCd
    String  itmBarCd
    
    String  itmName
    
    String alias1
    String alias2
    String alias3

    InvCatgryMastr  catgry

    String remark 
    Double opRate=0
    Double mrp=0
    Double disc=0
    
    String  rateEdit="N"
    String  allowNegt="N"
    String  itmTax="N"
    String  lyaltyApl="N"
    String  batchApl="N"

    // common fields        
    String delFlg="N"      // Y / N
    String  statsFlg="A"    // A-Active / I-InActive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date  updtdDate
    
   
    String  hsnCd
    

    InvBarndMastr brand
    
    Double locQtyTmp=0
    String multiLoc
    Double lastBuyngRate
    Double avgRate
    

    List tmpList=[]
    List supplList=[]
    
    static transients = ["locQtyTmp","multiLoc","lastBuyngRate","avgRate","tmpList","supplList"]    
    
 
    static constraints = {
        gentdCd(nullable:true,blank:true,maxSize:100,unique:true)
        itmCd(nullable:true,blank:true,maxSize:200)
        itmName(nullable:false,blank:false,maxSize:400,unique:true)
        alias1(nullable:true,maxSize:199)
        alias2(nullable:true,maxSize:199)
        alias3(nullable:true,maxSize:199)
        
        itmBarCd(nullable:true,blank:true,maxSize:400,unique:true)
         
        catgry(nullable:false)
     
        
        remark(nullable:true,maxSize:200)
         
        opRate(nullable:false)
        mrp(nullable:false)
        disc(nullable:false)
        
        rateEdit(nullable:false)
        allowNegt(nullable:false)
        itmTax(nullable:false)
        lyaltyApl(nullable:false)
        batchApl(nullable:false)
       
        
        hsnCd(nullable:true,maxSize:199)
      
      
        brand(nullable:true)
        
        
       
        
      
        
        
        statsFlg(nullable:false,blank:false,maxSize:1)
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
            id column:"itm_id"          
        }
    }
    
}
