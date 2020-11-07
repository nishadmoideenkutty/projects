<%@ page import="inv.det.InvItmMastr" %>

 
   <link rel="stylesheet" href="${assetPath(src: 'select2.min.css')}">
 <script src="${assetPath(src: 'select2.full.min.js')}"></script>
 <script>
     $(document).ready(function(){
     
     $("#brand").select2()
     $("#catgry").select2()
     
     });
</script>


<div style="width:100%;height:5px" ></div>
<div class="row">
    <div class="col-xs-10 col-sm-2">
        Item Code<span class="required-indicator"></span>
    </div>
    <div class="col-xs-10 col-sm-8">                              
        <g:textField  id="itmCd" name="itmCd" maxlength="50" required="" value="${invItmMastrInstance?.itmCd}"  />
    </div>
</div>
<div style="width:100%;height:5px" ></div>
<div class="row">
    <div class="col-xs-10 col-sm-2">
        Item Name<span class="required-indicator">*</span>
    </div>
    <div class="col-xs-10 col-sm-8">                              
        <g:textField  id="itmName" name="itmName" maxlength="200" required="" value="${invItmMastrInstance?.itmName}" required="" />
    </div>
</div>




<div style="width:100%;height:5px" ></div>
<div class="row">
    <div class="col-xs-10 col-sm-2">
       Brand <span class="required-indicator">*</span>
    </div>
    <div class="col-xs-10 col-sm-8">                              
       <g:select  style="width:100%;" id="brand" name="brand.id" from="${inv.det.InvBarndMastr.findAllByDelFlg("N")}" optionKey="id" optionValue="brandName" value="${invItmMastrInstance?.brand?.id}" class="many-to-one" noSelection="['': '']"/>
    </div>
</div>


<div style="width:100%;height:5px" ></div>
<div class="row">
    <div class="col-xs-10 col-sm-2">
       Category<span class="required-indicator">*</span>
    </div>
    <div class="col-xs-10 col-sm-8">                              
       <g:select  style="width:100%;" id="catgry" name="catgry.id" from="${inv.det.InvCatgryMastr.findAllByDelFlg("N")}" optionKey="id" optionValue="catgryName" required="" value="${invItmMastrInstance?.catgry?.id}" class="many-to-one" noSelection="['': '']"/>
    </div>
</div>




<div style="width:100%;height:5px" ></div>
<div class="row">
    <div class="col-xs-10 col-sm-2">
       Rate<span class="required-indicator">*</span>
    </div>
    <div class="col-xs-10 col-sm-8">                              
        <g:textField placeholder="Rate" name="opRate" maxlength="10" onkeypress="return numberDecimal(event,this)"   onchange="" value="${invItmMastrInstance?.opRate}"/>
    </div>
</div>


<div style="width:100%;height:5px" ></div>
<div class="row">
    <div class="col-xs-10 col-sm-2">
       MRP<span class="required-indicator"></span>
    </div>
    <div class="col-xs-10 col-sm-8">                              
        <g:textField placeholder="mrp" name="mrp" maxlength="10" onkeypress="return numberDecimal(event,this)"   onchange="" value="${invItmMastrInstance?.mrp}"/>
    </div>
</div>



<div style="width:100%;height:5px" ></div>
<div class="row">
    <div class="col-xs-10 col-sm-2">
       Discount(%)<span class="required-indicator"></span>
    </div>
    <div class="col-xs-10 col-sm-8">                              
        <g:textField placeholder="disc" name="disc" maxlength="10" onkeypress="return numberDecimal(event,this)"   onchange="" value="${invItmMastrInstance?.mrp}"/>
    </div>
</div>




<div style="width:100%;height:5px" ></div>
<div class="row">
    <div class="col-xs-10 col-sm-2">
        BAR Code<span class="required-indicator"></span>
    </div>
    <div class="col-xs-10 col-sm-8">                              
        <g:textField  id="itmBarCd" name="itmBarCd" maxlength="200" value="${invItmMastrInstance?.itmBarCd}"  />
    </div>
</div>

<div style="width:100%;height:5px" ></div>
<div class="row">
    <div class="col-xs-10 col-sm-2">
        HSN Code<span class="required-indicator"></span>
    </div>
    <div class="col-xs-10 col-sm-8">                              
        <g:textField  id="hsnCd" name="hsnCd" maxlength="50" value="${invItmMastrInstance?.hsnCd}"  />
    </div>
</div>
<div style="width:100%;height:5px" ></div>
<div class="row">
    <div class="col-xs-10 col-sm-2">
        Alias 1<span class="required-indicator"></span>
    </div>
    <div class="col-xs-10 col-sm-8">                              
        <g:textField  id="alias1" name="alias1" maxlength="200" value="${invItmMastrInstance?.alias1}"  />
    </div>
</div>
<div style="width:100%;height:5px" ></div>
<div class="row">
    <div class="col-xs-10 col-sm-2">
        Alias 2<span class="required-indicator"></span>
    </div>
    <div class="col-xs-10 col-sm-8">                              
        <g:textField  id="alias2" name="alias2" maxlength="200" value="${invItmMastrInstance?.alias2}"  />
    </div>
</div>
<div style="width:100%;height:10px" ></div>