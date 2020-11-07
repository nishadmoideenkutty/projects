package inv.det

class VItmFullDtls {

    Integer itmId
    String gentdCd
    String itmCd
    String itmBarCd
    String itmName
    String  alias1
    String  alias2
    String alias3
    Integer catgryId
    String remark
    Double opRate
    Double mrp
    Double disc
    String rateEdit
    String  allowNegt
    String itm_tax
    String lyaltyApl
    String batchApl
    String hsnCd
    Integer brandId
    String catgryName
    String brandName
    byte[] itmPic
    String picType
    
    
    static mapping = {
    table 'v_itm_full_dtls'
    version false
     id name: "itmId", generator: "assigned"
  }
}
