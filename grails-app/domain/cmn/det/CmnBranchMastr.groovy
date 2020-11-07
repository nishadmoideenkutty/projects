package cmn.det

class CmnBranchMastr {

    
    String brnchName
    String brnchCd
     
    String bldngName
    String street
    String place
    String distrct
    String state="KERALA"
    String stateCd="32"
    String country
    String pinCd
    String contact
    String phNo
    String mobNo
    String gstin
    Integer compId
    String email
    String branchTyp='N' //DEfault is N= NO M=Main Branch
    
    String delFlg="N"      // Y / N
    String  statsFlg="A"    // A-Active / I-InActive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date  updtdDate
    
    String branchNatre
    Integer branchAcctId
    
    static constraints = {
        
     
   
        brnchName(nullable:false,maxSize:50,blank:false)
        brnchCd(nullable:false,maxSize:20,blank:false,unique:true)

        
        
        bldngName(nullable:true,maxSize:499)
        street(nullable:true,maxSize:50)
        place(nullable:true,maxSize:50)
        distrct(nullable:true,maxSize:50)
        state(nullable:true,maxSize:50)
        country(nullable:true,maxSize:50)
        pinCd(nullable:true,maxSize:50)
        contact(nullable:true,maxSize:50)
        phNo(nullable:true,maxSize:50)
        mobNo(nullable:true,maxSize:50)
        email(nullable:true,maxSize:50)
        compId(nullable:true)
        branchTyp(nullable:true,blank:true,maxSize:10)
        gstin(nullable:true)
        branchAcctId(nullable:true)
        stateCd(nullable:true)
        branchNatre(nullable:true,maxSize:90)
         //common
        statsFlg(nullable:false,blank:false,maxSize:1,inList:["A","I"])
        delFlg(nullable:false,blank:false,maxSize:1,inList:["Y","N"])
        cretnBy(nullable:false,blank:false)
        cretnDate(nullable:false,blank:false)
        updtdBy(nullable:true)
        updtdDate(nullable:true)
        
    }
    
     static mapping=
	{              
		columns
		{
			id column:"brnch_id"
		   
		}
	}
}
