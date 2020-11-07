package gen.det

import cmn.det.CmnBranchMastr;

class GenAcctMastr {

    
    String acctCd
    String acctName
    String acctDesc
 
    GenAcctTypeMastr acctType
    GenAcctSubtypeMastr acctSubtype
    
    String partyType  
     
    String sysGenFlg="N"  

    String address1
    
    String country
    String state
    String district
    String poNo
     
    String email
    String mobl
    String phon
    
   

    String stateCd    
    String place
    Date dob
    
    
    String locLongt  // location longitude
    String locLatt    // location lattitude
    
    String pan
    String gstin 
     
    
    String ifsc
    String bankAccNo 
    String bankName
    String bankBranch
    
    CmnBranchMastr branch
    Integer locId
     
    String delFlg="N"   // delFlg should be N/Y. if deleted state, delFlg = 'Y'
    String statsFlg="A" // statsFlg should be A/I. A= Active I= Inactive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date updtdDate 
    
    
    
    static constraints = {
        
        
        acctCd(nullable:false,blank:false, unique:true,maxSize:50)
        acctName(nullable:false,blank:false,maxSize:200)
        acctDesc(nullable:true,blank:true,maxSize:500)
           
        acctType(nullable:false,blank:false)
	acctSubtype(nullable:false,blank:false)
        
        partyType(nullable:false,blank:false)
        sysGenFlg(nullable:false,maxSize:1,inList:['N','Y'])
        
        address1(nullable:true,blank:true,maxSize:500)
        
        
        
     country(nullable:true,blank:true,maxSize:50)
     state(nullable:true,blank:true,maxSize:50)
     district(nullable:true,blank:true,maxSize:50)
     poNo(nullable:true,blank:true,maxSize:20)
     
     email(nullable:true,blank:true,maxSize:50)
     mobl(nullable:true,blank:true,maxSize:20,unique:['partyType'])
     phon(nullable:true,blank:true,maxSize:20)
    
   

     stateCd(nullable:true,blank:true,maxSize:10)    
     place(nullable:true,blank:true,maxSize:200)
     dob(nullable:true,blank:true)
    
    
     locLongt(nullable:true,blank:true,maxSize:50)
     locLatt(nullable:true,blank:true,maxSize:50)
    
     pan(nullable:true,blank:true,maxSize:50)
     gstin(nullable:true,blank:true,maxSize:50) 
     
    
     ifsc(nullable:true,blank:true,maxSize:50)
     bankAccNo(nullable:true,blank:true,maxSize:50) 
     bankName(nullable:true,blank:true,maxSize:100)
     bankBranch(nullable:true,blank:true,maxSize:100)
    
     branch(nullable:false)
     locId(nullable:true)
        
        delFlg(nullable:false,maxSize:1,inList:['N','Y','A'])
        statsFlg(nullable:false,maxSize:1,inList:['A','I'])
        cretnBy(nullable:false)
        cretnDate(nullable:false)
        updtdBy(nullable:true)
        updtdDate(nullable:true)
        
    }
    static mapping=
    {
        columns
        {
            id column:"acct_id"          
        }
    }
}
