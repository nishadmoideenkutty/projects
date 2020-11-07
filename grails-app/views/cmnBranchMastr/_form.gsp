<%@ page import="cmn.det.CmnBranchMastr" %>
<link href="${resource(dir: 'css', file: 'select2.min.css')}" rel="stylesheet">                                
<script src="${resource(dir: 'js', file: 'select2.full.min.js')}" type="text/javascript"></script>

 
<script>
    $(document).ready(function(){

           
             $("#imgDyn").attr('src',"${createLink(controller:'CmnBranchMastr', action:'getImageCmp')}");
             $("#imgDyn").width(200).height(200);
            
            $("#branchNatre").select2();
            $("#profPic").change(function(){
            
             if (this.files[0].size > 1048576) { 
//                alert("Try to upload file less than 1MB!"); 
               toastr.warning("Try to upload file less than 1MB!");
               $("#profPic").val("")
               return false;
            } 
            $("#imgDyn").attr("src", URL.createObjectURL(this.files[0]));
            $("#imgDyn").width(200).height(200);
            
            });
    $("#rmvImgDyn").click(function(){
       $("#imgDyn").attr("src", "");
         $("#profPic").val("")
    });
            
    });
 </script> 


<div class="row">
    <div class="col-xs-10 col-sm-2">
      Name <span class="required-indicator">*</span>
    </div>
    <div class="col-xs-10 col-sm-3">                    
          <g:textField name="brnchName" maxlength="50" required="" value="${cmnBranchMastrInstance?.brnchName}"/>
    </div> 
   <div class="col-xs-10 col-sm-2">
      Code <span class="required-indicator">*</span>
    </div>
     <div class="col-xs-10 col-sm-3">                      

        <g:textField name="brnchCd" maxlength="4" required="" value="${cmnBranchMastrInstance?.brnchCd}"/>
    </div>      
 </div>


<div style="width:100%;height:5px" ></div>



<div class="row">
    <div class="col-xs-10 col-sm-2">
      Address 
    </div>
    <div class="col-xs-10 col-sm-3">                    
          <g:textArea class="form-control" rows="4" name="bldngName" maxlength="499" value="${cmnBranchMastrInstance?.bldngName}"/>
    </div> 
    
     <div class="col-xs-10 col-sm-2">
      Contact
    </div>
    <div class="col-xs-10 col-sm-3">                              
         <g:textField  name="contact" maxlength="50" value="${cmnBranchMastrInstance?.contact}"/>
    </div>   
    




<div class="row" hidden="true" >
    <div class="col-xs-10 col-sm-2">
      Place 
    </div>
   <div class="col-xs-10 col-sm-3">                      
          
          <g:textField  name="place" maxlength="50" value="${cmnBranchMastrInstance?.place}"/>
    </div> 
   <div class="col-xs-10 col-sm-2">
      District 
    </div>
 <div class="col-xs-10 col-sm-3">                     
         
          <g:textField  name="distrct" maxlength="50" value="${cmnBranchMastrInstance?.distrct}"/>
    </div>      
 </div>


<div style="width:100%;height:5px" ></div>

<div class="row" hidden="true" >
   
  <div class="col-xs-10 col-sm-2">
      Country 
    </div>
  <div class="col-xs-10 col-sm-3">                               
          <g:textField  name="country" maxlength="50" value="${cmnBranchMastrInstance?.country}"/>
    </div>      
 </div>


<div style="width:100%;height:5px" ></div>


<div class="row"  hidden="true" >
    <div class="col-xs-10 col-sm-2">
      Pin Code 
    </div>
     <div class="col-xs-10 col-sm-3">                              
         <g:textField  name="pinCd" maxlength="50" value="${cmnBranchMastrInstance?.pinCd}"/>
    </div> 
  
   <div class="col-xs-10 col-sm-2">
       
      Street 
    </div>
     <div class="col-xs-10 col-sm-3">                      

          <g:textField  name="street" maxlength="50" value="${cmnBranchMastrInstance?.street}"/>
    </div>      
 </div>


    
 </div>

 
 <div style="width:100%;height:5px" ></div>



<div class="row">
    <div class="col-xs-10 col-sm-2">
      State 
    </div>
    <div class="col-xs-10 col-sm-3">                    
           <g:textField  class="form-control"  name="state" maxlength="100" value="${cmnBranchMastrInstance?.state}"/>
    </div> 
    
     <div class="col-xs-10 col-sm-2">
      State Code
    </div>
    <div class="col-xs-10 col-sm-3">                              
         <g:textField  name="stateCd" maxlength="50" value="${cmnBranchMastrInstance?.stateCd}"/>
    </div>   
    
 </div>
<div style="width:100%;height:5px"  ></div>

<div class="row" >
     <div class="col-xs-10 col-sm-2">
      Phone 
    </div>
  <div class="col-xs-10 col-sm-3">                               
        <g:textField name="phNo" typr="phone" maxlength="20"  onkeypress="return number(event)" value="${cmnBranchMastrInstance?.phNo}"/>
    </div> 
  <div class="col-xs-10 col-sm-2">
      Mobile
    </div>
  <div class="col-xs-10 col-sm-3">                              
       <g:textField name="mobNo" maxlength="20"  onkeypress="return number(event)"  value="${cmnBranchMastrInstance?.mobNo}"/>
    </div>      
 </div>



 
  
  <div style="width:100%;height:5px" ></div>
    <div class="row">
     <div class="col-xs-10 col-sm-2">
      Email 
    </div>
   <div class="col-xs-10 col-sm-3">                                 
        <g:textField name="email"  type="email" onchange="if(!isEmail(this.value)){swal('Enter Valid Email');this.value=''}" maxlength="50" value="${cmnBranchMastrInstance?.email}"/>
    </div> 
     <div class="col-xs-10 col-sm-2">
      GSTIN 
    </div>
  <div class="col-xs-10 col-sm-3">                               
        <g:textField name="gstin" typr="gstin" maxlength="99"  onkeypress="" value="${cmnBranchMastrInstance?.gstin}"/>
    </div>      
 </div>
 
 
   
 
 
   <div style="width:100%;height:5px" ></div>
    <div class="row"  hidden="true">
     <div class="col-xs-10 col-sm-2">
    c
    </div>
   <div class="col-xs-10 col-sm-3">                                 
       
    </div> 
       
 </div>
 
 
    <g:if test="${cmn.det.CmnBranchMastr.findByDelFlgAndStatsFlgAndBranchTyp('N','A','M') == null}">
      <div style="width:100%;height:5px" ></div>
  <div class="row"  hidden="true">
                           
     <div class="col-xs-10 col-sm-2">
      Is Branch  Main?
    </div>
  <div class="col-xs-10 col-sm-3">                               
    <input id="rd_actFlgY" type="radio" name="branchTyp"    style="width:20px;"
	   ${cmnBranchMastrInstance?.branchTyp == 'M' ? 'checked="checked"' : ''}> Yes  </input>
                                        
    <input id="rd_actFlgN" type="radio" name="branchTyp" value="I" style="width:20px;"
          ${cmnBranchMastrInstance?.branchTyp == 'N' ? 'checked="checked"' : ''}> No</input>
  </div> 
   
 </div>
</g:if>
<g:else>
   <div class="row"  hidden="true">
      
<div class="col-xs-10 col-sm-3">   
      <g:if test="${cmnBranchMastrInstance?.branchTyp=='M'}">
         <font color="red"><b> Main Branch</b></font>  
         </g:if>
  </div> 
  </div>
</g:else>
<div style="width:100%;height:25px" ></div>

 <div class="row" >
      
           <div class="col-xs-2 col-sm-2">
              Company Logo
           </div> 
                    <div class="col-xs-8 col-sm-8">   
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <span class="input-group-text"><i class="fas fa-image"></i></span>
                                </div>
                                <input type="file" class="form-control" placeholder="Choose file" id="profPic" name="profPic">
                              </div>      

                               <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">IMAGE</h3>

           
                <div class="card-tools">
                      <a  href="#"  id="rmvImgDyn" class="btn btn-xs" ><i class="fas fa-trash"></i> </a>
                  <button type="button" class="btn btn-tool" data-card-widget="maximize"><i class="fas fa-expand"></i>
                  </button>
                </div>
                <!-- /.card-tools -->
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                  <img src="" alt="upload" class="img-fluid" id="imgDyn" width="200" height="200">
              </div>
              <!-- /.card-body -->
            </div>
                    </div> 
                    
                 
         
              
  </div>
  

		                        
                                                                                
			