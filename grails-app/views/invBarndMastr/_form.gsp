<%@ page import="inv.det.InvBarndMastr" %>

<script>
    
    function resgetCodeGenrator(data)
      {
      $("#brandCd").val(data)
      }
      
    
      $(document).ready(function(){
    
     if(!$("#brandCd").val())
        {
            var parameters = {
                    "mastrCd":"BND",			
                    }	
                    
            <g:remoteFunction controller="cmnCommon" action="getCodeGenratorMastr"  params="parameters"  onSuccess="resgetCodeGenrator(data)" />
         }
         
      });   
         
function validateSave()
    {
    
    return true;
    }
</script>

 <div class="row">
    <div class="col-xs-10 col-sm-2">
      Code 
    </div>
    <div class="col-xs-10 col-sm-8">                    
          <g:textField name="brandCd" maxlength="100" required="" value="${invBarndMastrInstance?.brandCd}" />
     
 </div>
  </div>
  <div style="width:100%;height:5px" ></div>
  <div class="row">
    <div class="col-xs-10 col-sm-2">
      Name 
    </div>
    <div class="col-xs-10 col-sm-8">                    
          <g:textField name="brandName" maxlength="200" required="" value="${invBarndMastrInstance?.brandName}"/>
     
 </div>
  </div>

   <div style="width:100%;height:5px" ></div>
  <div class="row">
    <div class="col-xs-10 col-sm-2">
      Company  
    </div>
    <div class="col-xs-10 col-sm-8">                    
          <g:textField name="companyName" maxlength="200" required="" value="${invBarndMastrInstance?.companyName}"/>
     
 </div>
  </div>
     <div style="width:100%;height:10px" ></div>
