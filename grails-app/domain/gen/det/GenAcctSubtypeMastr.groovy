package gen.det

class GenAcctSubtypeMastr {

    String acctSubtypeCd   
    String acctSubtypeName
    GenAcctTypeMastr acctType
    int primaryId=0;
    //Common Fields
    String delFlg="N"   // delFlg should be N/Y. if deleted state, delFlg = 'Y'
    String statsFlg="A" // statsFlg should be A/I. A= Active I= Inactive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date updtdDate
    static constraints = {
        acctSubtypeCd(nullable:true)
        acctSubtypeName(nullable:false,unique:true,maxSize:200)
        acctType(nullable:false)
        primaryId(nullable:true)
        //Common Fields
        delFlg(nullable:false,maxSize:1,inList:['N','Y','A'])
        statsFlg(nullable:false,maxSize:1,inList:['A','I'])
        cretnBy(nullable:false)
        cretnDate(nullable:false)
        updtdBy(nullable:true)
        updtdDate(nullable:true)
    }
    static mapping = {
        columns
        {
            id column:"acct_subtype_id"
            acctType lazy:false
        }
    }
}