<%@ page import="gen.det.GenLocMastr" %>


 
   <link rel="stylesheet" href="${assetPath(src: 'select2.min.css')}">
 <script src="${assetPath(src: 'select2.full.min.js')}"></script>
 <script>
 $(document).ready(function(){
   
       
         $("#district").select2();
         $("#state").select2();
         $("#contry").select2();
         
         
          
         $("#district").change(function(){
         
         
            var parameters = {
            "district":$("#district").val(),
            "state": $("#state").val(),
            "country":$("#contry").val(),                           
            }
            <g:remoteFunction controller="genLocMastr" action="getSateCountry"  params="parameters" onSuccess="resgetSateCountry(data)"  />
                 
         });
         
});
 function resgetSateCountry(data)
   {
  
    $("#state").select2("val",data.rows.stateId)
    $("#contry").select2("val", data.rows.countryId)  
     
   }
   
   function validateSave()
   
   {

                if(!$("#district").val())
                {
                swal("Warning!", "District is mandatory!", "warning");
                return false;   
                }

                 if(!$("#state").val())
                {
                swal("Warning!", "State is mandatory!", "warning");
                return false;   
                }

                 if(!$("#contry").val())
                {
                swal("Warning!", "Country is mandatory!", "warning");
                return false;   
                }
   return true;
   }
   
 </script>
 <div style="width:100%;height:5px" ></div>
 <div class="row">
    <div class="col-xs-10 col-sm-2">
      Location Code  <span class="required-indicator">*</span>
    </div>
    <div class="col-xs-10 col-sm-8">                    
          <g:textField name="locCd" maxlength="100" required="" value="${genLocMastrInstance?.locCd}"/>
     
 </div>
  </div>
  <div style="width:100%;height:5px" ></div>
  <div class="row">
    <div class="col-xs-10 col-sm-2">
      Location Name  <span class="required-indicator">*</span>
    </div>
    <div class="col-xs-10 col-sm-8">                    
          <g:textField name="locName" maxlength="200" required="" value="${genLocMastrInstance?.locName}" autofocus="autofocus"/>
     
 </div>
  </div>
  
    <div style="width:100%;height:5px" ></div>
  <div class="row">
    <div class="col-xs-10 col-sm-2">
        District/City <span class="required-indicator"></span>
    </div>
    <div class="col-xs-10 col-sm-8">                      

        <g:select  style="width:100%;" id="district" name="district" from="${cmn.det.CmnGenDistrict.findAllByDelFlgAndStatsFlg("N","A")}" optionKey="id" optionValue="districtName"  value="${genLocMastrInstance?.district?.id}" class="many-to-one" noSelection="['': '']"/>
       <!--<g:textField name="city" maxlength="50" value="${invCustomerMastrInstance?.city}"/>-->
    </div>      
</div>
 <div style="width:100%;height:5px" ></div>
 
 
 <div class="row">        
    <div class="col-xs-10 col-sm-2">
      State 
    </div>
  <div class="col-xs-10 col-sm-8" id="divStat">                               
        
      
  
        <g:select  style="width:100%;" id="state" name="state" from="${cmn.det.CmnGenState.findAllByDelFlgAndStatsFlg("N","A")}" optionKey="id" optionValue="stateName"  value="${genLocMastrInstance?.state?.id} " class="many-to-one" noSelection="['': '']"/>
    </div>                          
 </div>
 
 
 <div style="width:100%;height:5px" ></div>
  <div class="row">        
    <div class="col-xs-10 col-sm-2">
      Country 
    </div>
  <div class="col-xs-10 col-sm-8" >                               
     
       <g:select   style="width:100%;" id="contry" name="contry" from="${cmn.det.CmnGenCountry.findAllByDelFlgAndStatsFlg("N","A")}" optionKey="id" optionValue="countryName" value="${genLocMastrInstance?.contry?.id}" class="many-to-one" noSelection="['': '']"/>
    </div>                          
 </div>
  <div style="width:100%;height:10px" ></div>


