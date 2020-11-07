package cmn.det


class CmnTranNumGenMastr {

    CmnTranMaster tran
    String  noPrefix
    Integer noLength=0
    Integer startNo=1
    Date startDate
    Date endDate
    Integer nextNo=1
    String remark
    String branVhrGen="N"

    CmnBranchMastr branch


    String delFlg="N"      // Y / N
    String  statsFlg="A"    // A-Active / I-InActive
    int cretnBy
    Date cretnDate
    int updtdBy
    Date  updtdDate



    static constraints = {
         tran(nullable:false,blank:false)
         noPrefix(nullable:false,blank:false,maxSize:20,unique:true)
         noLength(nullable:false,blank:false)
         startNo(nullable:true,blank:true)
         startDate(nullable:true,blank:true)
         endDate(nullable:true,blank:true)
         nextNo(nullable:false,blank:false)
         remark(nullable:true,blank:true,maxSize:200)
         branVhrGen(nullable:true,blank:true)
         branch(nullable:true,blank:true)
        
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
            id column:"tran_gen_id"
        }
    }
    
    
}
