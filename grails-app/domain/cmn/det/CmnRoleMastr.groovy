package cmn.det

class CmnRoleMastr {

    
   
   String  roleName;	
   String  roleCd;	
  
    
     
      // common fields        
    String delFlg="N"      // Y / N
    String  statsFlg="A"    // A-Active / I-InActive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date  updtdDate
    
    static hasMany = [rolDtls:CmnRoleDtls]
    static constraints = {
        
		
          roleName(nullable:false,blank:false,maxSize:100,unique:true)		  		 
           roleCd(nullable:true)
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
            id column:"role_id"          
        }
    }
      
}
