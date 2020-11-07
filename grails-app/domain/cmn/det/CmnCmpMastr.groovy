package cmn.det

class CmnCmpMastr {



    
    String  compName
    String showName
    String bldngName
    String street
    String place
    String distrct
    String state
    String country
    String pinCd
    String servceTax
    String tin
    String pan
    String phNo
    String mobNo
    String email
    String website
    String landMark
    String uid
    String compCd
  
    String delFlg="N"      // Y / N
    String  statsFlg="A"    // A-Active / I-InActive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date  updtdDate
    
    
    
     String picType    
    byte[] profPic;
    
    static constraints = {
        
        compName(nullable:false,maxSize:50,blank:false,unique:true)		
        showName(nullable:false,maxSize:100,blank:false)                        
        bldngName(nullable:true,maxSize:499)
        street(nullable:true,maxSize:50)
        place(nullable:true,maxSize:50)
        distrct(nullable:true,maxSize:50)
        state(nullable:true,maxSize:50)
        country(nullable:true,maxSize:50)
        pinCd(nullable:true,maxSize:50)
        servceTax(nullable:true,maxSize:50)
        tin(nullable:true,maxSize:50)
        pan(nullable:true,maxSize:50)
        phNo(nullable:true,maxSize:50)
        mobNo(nullable:true,maxSize:50)
        email(nullable:true,maxSize:50)
        website(nullable:true,maxSize:50)
        landMark(nullable:true,maxSize:50)
        uid(nullable:true,maxSize:50)                                 
        compCd(nullable:false,maxSize:20,blank:false,unique:true)
        
         //common
        statsFlg(nullable:false,blank:false,maxSize:1,inList:["A","I"])
        delFlg(nullable:false,blank:false,maxSize:1,inList:["Y","N"])
        cretnBy(nullable:false,blank:false)
        cretnDate(nullable:false,blank:false)
        updtdBy(nullable:true)
        updtdDate(nullable:true)
        
         profPic (nullable:true)
        picType (nullable:true)
        
    }
    
    static mapping=
	{
		columns
		{
			id column:"comp_id"
		   
		}
	}
        
}
