<%@ page import="gen.det.GenAcctMastr" %>

 
 <link rel="stylesheet" href="${assetPath(src: 'select2.min.css')}">
 <script src="${assetPath(src: 'select2.full.min.js')}"></script>

 
  <script>
 $(document).ready(function(){
   
       
         $("#locId").select2();
         
         $("#locId").change(function(){
         
           
            var parameters = {
            "locId":$("#locId").val()                                
            }
            <g:remoteFunction controller="genLocMastr" action="getSateCountry"  params="parameters" onSuccess="resgetSateCountry(data)"  />
            
         
         });
         
        
         
});

   
function resgetSateCountry(data)
   {
  
     $("#locDiv").empty()
     $("#locDiv").last().append('<div class="bg-primary ">'+data.rows.districtName+'</div>')
     $("#locDiv").last().append('<div class="bg-info ">'+data.rows.stateName+'</div>')
     $("#locDiv").last().append('<div class="bg-lightblue ">'+data.rows.countryName+'</div>')
     
    
     
   }
   
   function validateSave()
   
   {

                if(!$("#locId").val())
                {
                swal("Warning!", "Location is mandatory!", "warning");
                return false;   
                }

               
   return true;
   }
   
 </script>
 

 <div style="width:100%;height:5px" ></div>
 <div class="row">
    <div class="col-xs-10 col-sm-2">
      Mobile No.  <span class="required-indicator">*</span>
    </div>
    <div class="col-xs-10 col-sm-8">                    
          <g:textField name="mobl" maxlength="10"  required="" value="${genAcctMastrInstance?.mobl}" autofocus="autofocus" onkeypress="return number(event)"/>
     
 </div>
  </div>
  <div style="width:100%;height:5px" ></div>
  <div class="row">
    <div class="col-xs-10 col-sm-2">
      Name  <span class="required-indicator">*</span>
    </div>
    <div class="col-xs-10 col-sm-8">                    
          <g:textField name="acctName" maxlength="200" required="" value="${genAcctMastrInstance?.acctName}" />
     
 </div>
  </div>
  
  
    <div style="width:100%;height:5px" ></div>
  <div class="row">
    <div class="col-xs-10 col-sm-2">
      Address  <span class="required-indicator">*</span>
    </div>
    <div class="col-xs-10 col-sm-8">                    
          <g:textArea name="address1" class="form-control input-sm" maxlength="300" required="" value="${genAcctMastrInstance?.address1}" />
     
     </div>
        <div class="col-xs-10 col-sm-2"> 
      
      <div class="card-default align-content-center" id="locDiv"> </div>
      </div>
  </div>
  
  
  
<div style="width:100%;height:5px" ></div>
  <div class="row">
    <div class="col-xs-10 col-sm-2">
      PIN/ZIP 
    </div>
    <div class="col-xs-10 col-sm-8">                    
          <g:textField name="poNo" maxlength="6"  value="${genAcctMastrInstance?.poNo}" onkeypress="return number(event)"/>
     
 </div>
  </div>

 <div style="width:100%;height:5px" ></div>
  <div class="row">        
    <div class="col-xs-10 col-sm-2">
      Location  <span class="required-indicator">*</span>
    </div>
  <div class="col-xs-10 col-sm-8" >                               
     
       <g:select   style="width:100%;" id="locId" name="locId" from="${gen.det.GenLocMastr.findAllByDelFlgAndStatsFlg("N","A")}" optionKey="id" optionValue="locName" value="${genAcctMastrInstance?.locId}" class="many-to-one" noSelection="['': '']" required="true" />
    </div>                          
 </div>
 

<div style="width:100%;height:5px" ></div>
  <div class="row">
    <div class="col-xs-10 col-sm-2">
      Email 
    </div>
    <div class="col-xs-10 col-sm-8">                    
          <g:textField name="email" maxlength="70"  value="${genAcctMastrInstance?.email}" />
     
 </div>
  </div>
 
 
 <div style="width:100%;height:10px" ></div>
  
  


