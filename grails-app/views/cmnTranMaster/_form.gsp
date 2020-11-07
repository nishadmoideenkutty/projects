<%@ page import="cmn.det.CmnTranMaster" %>


<script>
    
     function validateSave(){
         return true;
        }
  
        
        $(window).on('load', function () {
        <g:each status="i" var="tmpCmnBranchMastr" in="${cmn.det.CmnBranchMastr.findAllByDelFlgAndStatsFlg('N','A')}">
           
               <g:each status="j" var="objcmnTranNumGenMastr" in="${cmnTranNumGenMastrInstance}">
                 
                    if("${tmpCmnBranchMastr?.id}" == "${objcmnTranNumGenMastr?.branch?.id}")
                    {                    
                        $("#tmpnoPrifix_${tmpCmnBranchMastr?.id}").val("${objcmnTranNumGenMastr?.noPrefix}")
                        $("#tmpnoLen_${tmpCmnBranchMastr?.id}").val("${objcmnTranNumGenMastr?.noLength}")
                        $("#tmpnoLast_${tmpCmnBranchMastr?.id}").val("${objcmnTranNumGenMastr?.nextNo}")                    
                    }
               </g:each>
          </g:each>
 });
   
$(document).ready(function(){

 if("${cmnTranMasterInstance?.statsFlg}"=="I")
 {
    $("#tranCd").prop("readonly",true)
    $("#tranName").prop("readonly",true)
    
 }

});

</script>


<div class="row">
    
   <div class="col-xs-10 col-sm-2">
      Code <span class="required-indicator">*</span>
    </div>
     <div class="col-xs-10 col-sm-3">                      

        <g:textField id="tranCd"  name="tranCd" maxlength="20" required="" value="${cmnTranMasterInstance?.tranCd}"/>
    </div>    

    <div class="col-xs-10 col-sm-2">
      Name <span class="required-indicator">*</span>
    </div>
    <div class="col-xs-10 col-sm-3">                    
          <g:textField  id="tranName" name="tranName" maxlength="200" required="" value="${cmnTranMasterInstance?.tranName}"/>
    </div> 
    
 </div>


 <div style="width:100%;height:10px" ></div>
   <div class="row">
 <div class="col-lg-10">
                  <div class="card card-default">
                     <div class="card-header d-flex align-items-center">
                        <div class="d-flex justify-content-center col">
                           <div class="h4 m-0 text-center">Reference Number Generation</div>
                        </div>
                     
                     </div>
                     <div class="card-body">
                         

    <table class="table table-bordered no-padding" >
            <thead>           
                                        <tr>                                           
                                            <th style="width:2%">#</th>
                                            <th hidden="true">branchId</th>
                                            <th style="width:30%">Branch</th>
                                            <th style="width:20%">Prefix</th>
                                            <th style="width:10%">No. Length</th>
                                            <th style="width:10%">Last Number</th>
                                        </tr>
                                      
              </thead>                             
           <tbody id="branchTbdy" class="no-pad">
          
               <g:each status="i" var="objCmnBranchMastr" in="${cmn.det.CmnBranchMastr.findAllByDelFlgAndStatsFlg('N','A')}">
                  
                 <tr>
                 <td>${i+1}</td>
                 <td  hidden="true" ><input type="text" id="tmpBranhId_${objCmnBranchMastr?.id}" name="tmpBranhId_${objCmnBranchMastr?.id}"  value="${objCmnBranchMastr?.id}"/></td>
                 <td>${objCmnBranchMastr?.brnchName}</td>
                 <td><input   type="text" class="form-control" id="tmpnoPrifix_${objCmnBranchMastr?.id}" name="tmpnoPrifix_${objCmnBranchMastr?.id}"  value="${objCmnBranchMastr?.brnchCd+cmnTranMasterInstance?.tranCd}"  /> </td>
                 <td ><input  style="text-align: right;" type="text" class="form-control" id="tmpnoLen_${objCmnBranchMastr?.id}" name="tmpnoLen_${objCmnBranchMastr?.id}"  value="0" onkeypress="return number(event)" /></td>
                 <td ><input  style="text-align: right;" type="text" class="form-control" id="tmpnoLast_${objCmnBranchMastr?.id}" name="tmpnoLast_${objCmnBranchMastr?.id}"  value="0" onkeypress="return number(event)" /></td>
                 
                 
               </tr>
             
               </g:each>
           </tbody>                           
          
                              
           
         </table>
         
 </div> 
    
 </div>     
 </div> 
  </div> 