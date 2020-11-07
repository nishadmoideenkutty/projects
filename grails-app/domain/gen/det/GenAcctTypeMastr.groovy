package gen.det

class GenAcctTypeMastr {
    String acctTypeName
    
    //Common Fields
    String delFlg="N"   // delFlg should be N/Y. if deleted state, delFlg = 'Y'
    String statsFlg="A" // statsFlg should be A/I. A= Active I= Inactive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date updtdDate
    //int version
    static constraints = {
        acctTypeName(nullable:false,blank:false,unique:true,maxSize:200)
        //Common Fields
        delFlg(nullable:false,blank:false,maxSize:1,inList:['N','Y'])
        statsFlg(nullable:false,blank:false,maxSize:1,inList:['A','I'])
        cretnBy(nullable:false,blank:false)
        cretnDate(nullable:false,blank:false)
        updtdBy(nullable:true)
        updtdDate(nullable:true)
        //version(nullable:false)
    }
    static mapping = {
        columns
        {
            id column:"acct_type_id"
        }
    }
}
