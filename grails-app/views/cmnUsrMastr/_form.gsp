<%@ page import="cmn.det.CmnUsrMastr" %>


 
   <link rel="stylesheet" href="${assetPath(src: 'jasny-bootstrap.min.css')}">
 <script src="${assetPath(src: 'jasny-bootstrap.min.js')}"></script>
 

 
 
   <link rel="stylesheet" href="${assetPath(src: 'select2.min.css')}">
 <script src="${assetPath(src: 'select2.full.min.js')}"></script>
 
 
<script>
    
    $(document).ready(function(){
   
       $("#usrRole").select2()
       $("#brnchId").select2()
        $("#consignr").select2()
    
       $("#usrName").change(function(){
       
        $("#showUserName").text($("#usrName").val())
       
        });
        
//       $("#usrRole").change(function(e){
//       
//        $("#showRole").text(e.currentTarget.textContent)
//       
//        });
        
     $("#profPic" ).change(function() {
           
           checkSize();
           
                   });
                   
                   
                   
       $('input[type=checkbox][name=chkRestPass]').change(function(e){
                    
                  if ($(this).is(':checked')) {
                     
                       
                        $("#passDiv").show()
                         
                     
                  }
                  else{                     
                        $("#passDiv").hide()
                        
                  }
                 
                });    

                
                  if("${cmnUsrMastrInstance?.id}")
                  $("#usrImage").attr('src',"${createLink(controller:'CmnUsrMastr', action:'updateImage',id:cmnUsrMastrInstance.id)}");  /*This ajax use for call byte image file convert into jpg or png  when edit*/                                                                            
    });
    
    
    function checkSize()
        {      
//              if (!(/\.(gif|jpg|jpeg|tiff|png)$/i).test($("#compLogo").get(0).files[0])) {              
//                        alert('You must select an image file only');  
//                         $("#cmpLogoImage").attr('src',''); 
//                       return false;
//                    }
              var imgbytes = $("#profPic").get(0).files[0].size; // Image Size returned in bytes.
              var imgkbytes = Math.round(parseInt(imgbytes)/1024); // convert into KiloBytes
              
                   if(1024 < imgkbytes)
                     {
                       
                        $("#usrImage").attr('src',null);
                        $("#profPic").val("")
//                        alert("Image Size less than 1 MB is allowed.!!", function() {});
                        alert("Image Size less than 1 MB is allowed.!!");
                       return false;
                     }
               return true;
        }
        
        function validateSave()
        {
        
           if(!"${cmnUsrMastrInstance?.id}" || $('input[type=checkbox][name=chkRestPass]').is(':checked'))     
                {
                    if(!$("#usrPaswrd").val() )
                    {

                       swal("Warning!", "Password is mandatory!", "warning");
                       return false;
                    }
                    if($("#usrPaswrd").val() != $("#usrPaswrd1").val())
                    {

                       swal("Warning!", "Password doesnot match!", "warning");
                       return false;
                    }
                }
            
          
            if(!$("#usrRole").val())
            {
                swal("Warning!", "Select Role !", "warning");
                return false;
            }
            
             if(!$("#brnchId").val())
            {
               swal("Warning!", "Select Branch !", "warning");
               return false;
            }            
            return true;
        }
        
         function rechangeConsigner(data)
 {
 
                $("#consignr").attr('style', 'width: 100%');
                $("#consignr").select2();  
 }
 
 </script>   
<div class="row">
        <div class="col-md-3">

         
            
                 
                    
          <div class="card box-primary">
            <div class="card-body box-profile">
                    <div class="fileinput fileinput-new" data-provides="fileinput">   
                            <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 100%; height: 90px;">
                              <img id="usrImage"  alt="" src="">
                            </div>
                      <span class="btn btn-primary btn-xs btn-file"><span class="fileinput-new">Select image</span> <span class="fileinput-exists">Change</span> 
                       <input type="file" name="profPic" id="profPic"   />                       
                        </span> 
                       <a href="#" class="btn btn-danger btn-xs fileinput-exists" data-dismiss="fileinput" title="Remove" data-content="Click to Remove the Image">Remove</a> 
                            
                    </div>

              <h3 class="profile-username text-center" id="showUserName"></h3>

              <p class="text-muted text-center" id="showRole"></p>

             <%-- <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Followers</b> <a class="pull-right">1,322</a>
                </li>
                <li class="list-group-item">
                  <b>Following</b> <a class="pull-right">543</a>
                </li>
                <li class="list-group-item">
                  <b>Friends</b> <a class="pull-right">13,287</a>
                </li>
              </ul>

              <a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>--%>
            </div>
           
          </div>
        

        
         
        </div>
      
        <div class="col-md-9">
              
            
             <div class="row">

                <div class="col-xs-10 col-sm-2">
                  Branch <span class="required-indicator">*</span>
                </div>
                <div class="col-xs-10 col-sm-8">                    
                   
                    
                    <g:select id="brnchId" name="brnchId" required=""
				from="${cmn.det.CmnBranchMastr.findAllByDelFlgAndStatsFlg('N','A')}"
				optionKey="id" style="width:100%" 
                                optionValue="brnchName" noSelection="${['':'']}"
				value="${cmnUsrMastrInstance?.brnchId}" class="many-to-one"
                                
				 />
                </div>                     
             </div>
        
            <div style="width:100%;height:5px" ></div>
            
            <div class="row">

                <div class="col-xs-10 col-sm-2">
                  Show Name <span class="required-indicator">*</span>
                </div>
                <div class="col-xs-10 col-sm-8">                    
                    <g:textField name="usrName" maxlength="100" required="" value="${cmnUsrMastrInstance?.usrName}"/>
                </div>                     
             </div>
        
            <div style="width:100%;height:5px" ></div>
            
            
              <div class="row">
              <div class="col-xs-10 col-sm-2">
                  User Name <span class="required-indicator">*</span>
                </div>
                <div class="col-xs-10 col-sm-8">                    
                     <g:textField name="usrCd" maxlength="20" required="" value="${cmnUsrMastrInstance?.usrCd}"/>
                </div>                     
             </div>             
           
                                       
             <div id="passDiv"> 
              <div style="width:100%;height:5px" ></div>
              <div class="row">
              <div class="col-xs-10 col-sm-2">
                  Password <span class="required-indicator">*</span>
                </div>
                <div class="col-xs-10 col-sm-8">                    
                      <g:passwordField id="usrPaswrd" name="usrPaswrd" maxlength="20" class="form-control" autocomplete="off"
						style="" value=""
						 />
                </div>                     
             </div>  
             
              <div style="width:100%;height:5px" ></div>
            
            
              <div class="row">
              <div class="col-xs-10 col-sm-2">
                  Re-Type Password <span class="required-indicator">*</span>
                </div>
                <div class="col-xs-10 col-sm-8">                    
                      <g:passwordField id="usrPaswrd1" name="usrPaswrd1" maxlength="20" class="form-control" autocomplete="off"
						style="" value=""
						 />
                </div>                     
             </div>  
             </div>
             
             
             
             
              <div style="width:100%;height:5px" ></div>
               <div class="row">
              <div class="col-xs-10 col-sm-2">
                 Role <span class="required-indicator">*</span>
                </div>
                    <div class="col-xs-10 col-sm-8">                    
                   <g:select id="usrRole" name="usrRole" required=""
				from="${cmn.det.CmnRoleMastr.createCriteria().list(){eq('statsFlg','A') eq('delFlg','N') order('roleName', 'asc')}}"
				optionKey="id" style="width:100%" 
                                optionValue="roleName" noSelection="${['':'']}"
				value="${role}" class="many-to-one"
				 />
                 </div>                     
             </div>  
             
             
              <div style="width:100%;height:5px" ></div>
              <div class="row">
              <div class="col-xs-10 col-sm-2">
                Is Active ? <span class="required-indicator">*</span>
                </div>
                    <div class="col-xs-10 col-sm-8">                    
                    <input id="rd_actFlgY" type="radio" name="statsFlg"  value="A"   style="width:20px;"
                                    ${cmnUsrMastrInstance?.statsFlg == 'A' ? 'checked="checked"' : ''}> Active  </input>
                                        
                     <input id="rd_actFlgN" type="radio" name="statsFlg" value="I" style="width:20px;"
                                        ${cmnUsrMastrInstance?.statsFlg == 'I' ? 'checked="checked"' : ''}>Inactive</input>
                 </div>                     
             </div>  
              <div style="width:100%;height:5px" ></div>
    
             
             
             <div style="width:100%;height:5px"  ></div>
              <div class="row" hidden="true" id="restDiv">
              <div class="col-xs-10 col-sm-2">
                Reset Password <span class="required-indicator"></span>
                </div>
                    <div class="col-xs-10 col-sm-8">                    
                    <input type="checkbox" name="chkRestPass"  id="chkRestPass" value="Y"> 
                 </div>                     
             </div>  
            
               
        </div>
  </div>              
              

