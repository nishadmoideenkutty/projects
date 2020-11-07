<%@ page import="inv.det.InvCatgryMastr" %>


 
   <link rel="stylesheet" href="${assetPath(src: 'select2.min.css')}">
 <script src="${assetPath(src: 'select2.full.min.js')}"></script>
 
<script> 
    
     
      
      
    $(document).ready(function(){
    
    
   
         
         
     $("#parantId").select2()
     
    
    });
    
    function validateSave()
    {
        return true;
    }
</script>
<div class="row">

    <div class="col-xs-10 col-sm-2">
        Category Code<span class="required-indicator"></span>
    </div>
    <div class="col-xs-10 col-sm-8">                              
        <g:textField  id="catgryCd" name="catgryCd" maxlength="50" required="" value="${invCatgryMastrInstance?.catgryCd}"  />
    </div>
</div>
<div style="width:100%;height:5px" ></div>
<div class="row">


    <div class="col-xs-10 col-sm-2">
        Category Name 
    </div>
    <div class="col-xs-10 col-sm-8">                              
        <g:textField  id="catgryName" name="catgryName" maxlength="100" required="" value="${invCatgryMastrInstance?.catgryName}"/>
    </div> 

</div>
<div style="width:100%;height:5px" ></div>
<div class="row">


    <div class="col-xs-10 col-sm-2">
       Category Under
    </div>
    <div class="col-xs-10 col-sm-8">                              
        <g:select   style="width:100%;" id="parantId" name="parantId" from="${inv.det.InvCatgryMastr.findAllByDelFlgAndStatsFlg("N","A")}" optionKey="id" optionValue="catgryName" value="${invCatgryMastrInstance?.parantId}" class="many-to-one" noSelection="['0': 'Primary']"/>
    </div> 

</div>

<div style="width:100%;height:10px" ></div>