<%@ page import="gen.det.GenAcctMastr" %>
<html>
    <head>
       <meta name="layout" content="main2">
        
         <link rel="stylesheet" href="${assetPath(src: 'select2.min.css')}">
         <script src="${assetPath(src: 'select2.full.min.js')}"></script>

      
 
 <script>
    $(document).ready(function(){
   
        $("#locId").select2();

      
    });
     function validateSave()
        {
               
                if(!$("#locId").val())
                {
                swal("Warning!", "Location is mandatory!", "warning");
                return false;   
                }
                
         if($("#paswrd").val() !=  $("#c-pas").val() )
         {
            
                swal("Warning!", "Password is doesnot match!", "warning");
                return false;
         }
         
          if( $("#t-box").prop("checked") == false )
         {
            
                swal("Warning!", "Accept the terms and condition!", "warning");
                return false;
         }
         
          if( $("#t-box").prop("checked") == false )
         {
            
                swal("Warning!", "Accept the terms and condition!", "warning");
                return false;
         }
         
         return true;
        }
 </script>
    </head>
    <body>
        
       
            
       <section class="register">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                              <g:form controller="genEcom" action="saveCust" >
                                  <g:hiddenField name="custForm" value="1" />
                            <h5>Create Your Account</h5>
                            <div class="row">
                                <div class="col-md-12">
                                    <label>Name*</label>
                                    <input type="text" name="acctName" placeholder="Your first name" required="true">
                                </div>                                                               
                                <div class="col-md-12">
                                    <label>Phone Number*</label>
                                    <input type="text" name="mobl" placeholder="Your Mobile number" required="true">
                                </div>
                                   <div class="col-md-12">
                                    <label>Email Address</label>
                                    <input type="text" name="email" placeholder="Your email address">
                                </div>
                               <div class="col-md-12">
                                    <label>Location</label>
                                     <g:select placeholder="Your location"  style="width:100%;" id="locId" name="locId" from="${gen.det.GenLocMastr.findAllByDelFlgAndStatsFlg("N","A")}" optionKey="id" optionValue="locName" value="${genAcctMastrInstance?.locId}" class="many-to-one" noSelection="['': '']" required="true" />
                                </div>
                                  <div style="width:100%;height:10px" ></div>
                                <div class="col-md-12">
                                    <label>Password*</label>
                                    <input type="password"  class="form-control" name="paswrd" placeholder="Password should be more than 6 character" required="true">
                                </div>
                                <div style="width:100%;height:10px" ></div>
                                <div class="col-md-12">
                                    <label>Confirm Password*</label>
                                    <input type="password" class="form-control" name="c-pas" placeholder="Confirm your password" required="true">
                                </div>
                             
                                <div style="width:100%;height:10px" ></div>
                                <div class="col-md-7">
                                    <div>
                                        <input type="checkbox" name="t-box" id="t-box">
                                        <label for="t-box">I have read the terms and condition.</label>
                                    </div>
                                    <div>
                                        <input type="checkbox" name="c-box" id="c-box">
                                        <label for="c-box">Subscribe for newsletter</label>
                                    </div>
                                </div>
                                <div class="col-md-5 text-right">
                                    <button type="submit" name="button" onclick="return validateSave();" onkeypress="return validateSave();">Submit</button>
                                </div>
                            </div>
                         </g:form>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Register -->
          
    </body>
</html>
