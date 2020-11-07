<style>

.box .box-header .box-title {
  display: inline-block;
  padding: 5px 0px 5px 5px;
  margin: 0;
  font-size:16px;
  font-weight: 500;
  float: left;
  cursor: default;
}

</style>
<script>
  $(document).ready(function(){
 
  });
  
  function chkGrpFun(e)
  {
     var curId=e.id     
     var n = curId.lastIndexOf("_");       
     var res = curId.substring(n+1,curId.length); 
    
    if ($(e).is(":checked")) {
    
         
          $("#divtmp_"+res).find("input[type=checkbox]").each(function (i, ob) { 
                                                               $(ob).prop('checked', true);
            });
     
    }
    else{
       $("#divtmp_"+res).find("input[type=checkbox]").each(function (i, ob) { 
                                                               $(ob).prop('checked', false);
            });
    }
  }
  
  
  function chkModFun(e)
  {
     var curId=e.id     
     var n = curId.lastIndexOf("_");       
     var res = curId.substring(n+1,curId.length); 
    
    if ($(e).is(":checked")) {
    
         
          $("#collapseMod_"+res).find("input[type=checkbox]").each(function (i, ob) { 
                                                               $(ob).prop('checked', true);
            });
     
    }
    else{
       $("#divtmp_"+res).find("input[type=checkbox]").each(function (i, ob) { 
                                                               $(ob).prop('checked', false);
            });
    }
  }
  
  
  function chkAllDiv(e)
  {
     
    
    if ($(e).is(":checked")) {
             
          $("#divall").find("input[type=checkbox]").each(function (i, ob) { 
                                                               $(ob).prop('checked', true);
            });
     
    }
    else{
       $("#divall").find("input[type=checkbox]").each(function (i, ob) { 
                                                               $(ob).prop('checked', false);
            });
    }
  }
  
  
 </script> 

<g:hiddenField id="menuCount"  name="menuCount" value="" /> 

<div class="row">
    
      <div class="col-xs-10 col-sm-2">
       Role Code <span class="required-indicator">*</span>
    </div>
    <div class="col-xs-10 col-sm-3">                               
         <g:textField name="roleCd" class="form-control" maxlength="100" required="" value="${cmnRoleMastrInstance?.roleCd}"/>
    </div> 
    
     <div class="col-xs-10 col-sm-2">
       Role Name <span class="required-indicator">*</span>
    </div>
    <div class="col-xs-10 col-sm-3">                               
         <g:textField name="roleName" class="form-control" maxlength="100" required="" value="${cmnRoleMastrInstance?.roleName}"/>
    </div> 
   <div class="col-xs-10 col-sm-1">
        Select All
    </div>
 <div class="col-xs-10 col-sm-1">                               
    <g:checkBox onkeypress=""  onchange="chkAllDiv(this);" name="chkDivAll" id="chkDivAll" />
    </div>      
 </div>

 <div align="left" style="height:10px;"></div>

                                 
                                       
                      <div class="row">
                        <div class="col-xs-12 col-sm-12">
                          
                          
                          
                          
                          
                            <div class="card card-primary card-outline" id="divall" >
                                
                              
                              <%--
                               <div class="box-body">
                                    <div class="box-group" id="accordionDsh">
                                       
                                      
                                        <div class="panel ">
                                            <div class="box-header">
                                                <h4 class="box-title">
                                                    <a data-toggle="collapse" data-parent="#accordionDsh" href="#collapseOne">
                                                       <i class="fa fa-angle-double-right" aria-hidden="true"></i>&nbsp;Dashboard
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseOne" class="panel-collapse collapse">
                                                <div class="box-body">
                                                   
                                       <table id="dashLoad" align="center" class="table table-bordered" >
                                          <thead >
                                          <tr >
                                          <th  hidden="true" >id</th>
                                          <th  class="col-md-3 col-sm-6  col-xs-6 col-lg-3">Menu</th>
                                          <th  class="col-md-1 col-sm-1 col-xs-1 col-lg-1" style="text-align:center">Show</th>                                                                   
                                          </tr>
                                          </thead>   
                                          
                                           <g:each var="objdashboradMenu" in="${dashboradMenu}">
                                                                                                     
                                                   <tbody align="center">
                                                     <tr id="${objdashboradMenu?.id}">
                                                     <td hidden="true"><input name="menuId_${objdashboradMenu.id}" id="menuId_${objdashboradMenu.id}" value="${objdashboradMenu.id}"></td>        
                                                     <td align="left">${objdashboradMenu.menuName}</td>
                                                     <td><g:checkBox onkeypress=""  onkeyup="" name="viewFlg_${objdashboradMenu.id}" id="viewFlg_${objdashboradMenu.id}"   /></td>
                                                    
                                                     </tr>
                                                     <tbody>
                                               
                                          
                                          </g:each>   
                                          </table>
                                                  
                                                  
                                                  
                                                  
                                                  
                                                </div>
                                            </div>
                                        </div>
                                       
                                      
                                      
                                    </div>
                                </div>--%>
                                
                                
                                <div class="card-title" >
                                    <div class="box-group" id="accordion">
                                     
                                    
                                       <g:each var="objmodule" in="${module}">
                                        
                                         
                                          <div class="panel" id="accordion_${objmodule.id}">
                                            <div class="box-header">
                                                <h5 class="box-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseMod_${objmodule.id}">
                                                      <i class="fa fa-angle-double-right" aria-hidden="true"></i> ${objmodule.modlName}
                                                    </a>
                                                </h5>
                                            </div>
                                            <div id="collapseMod_${objmodule.id}" class="panel-collapse collapse">
                                                <div class="box-body">
                                                   
                                                  <div align="right" style="padding-right:10px; ">
                                                    <span > Select All</span>  
                                                           &nbsp;&nbsp;&nbsp;   <g:checkBox onkeypress=""  onchange="chkModFun(this);" name="modlCkAll_${objmodule.id}" id="modlCkAll_${objmodule.id}" />
                                                    </div>
                                          
                                          
                                          <g:each var="objgrpMenu" in="${grpMenu}">
                                                  <g:if test="${objgrpMenu.modl.id==objmodule.id}">		  
                                                  
                                                  
                                            <div class="panel box box-danger" id="divtmp_${objgrpMenu.id}" >
                                            <div class="box-header">
                                                <h4 class="box-title">
                                                    <a data-toggle="collapse" data-parent="#accordion_${objmodule.id}" href="#collapseGrp_${objgrpMenu.id}">
                                                      <i class="fa fa-angle-double-right" aria-hidden="true"></i> 
                                                    
                                                    &nbsp;&nbsp;&nbsp;                                                                                                            
                                                    ${objgrpMenu.menuGrpName}
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseGrp_${objgrpMenu.id}" class="panel-collapse collapse">
                                            <div class="card-body" >
                                              <div align="right" style="padding-right:10px; ">
                                          <span >
                                             Select All
                                          </span>  &nbsp;&nbsp;&nbsp;   <g:checkBox onkeypress=""  onchange="chkGrpFun(this);" name="grpCkAll_${objgrpMenu.id}" id="grpCkAll_${objgrpMenu.id}" />
                                                  </div>    
                                          <table id="menuLoad_${objgrpMenu.id}" align="center" class="table table-bordered " >
                                          <thead >
                                          <tr >
                                          <th  hidden="true" >id</th>
                                          <th  class="col-md-3 col-sm-6  col-xs-6 col-lg-3">Menu</th>
                                          <th  class="col-md-1 col-sm-1 col-xs-1 col-lg-1" style="text-align:center">Create</th>
                                          <th  class="col-md-1 col-sm-1 col-xs-1 col-lg-1" style="text-align:center">Edit</th>
                                          <th  class="col-md-1 col-sm-1 col-xs-1 col-lg-1" style="text-align:center">Delete</th>
                                          <th  class="col-md-1 col-sm-1 col-xs-1 col-lg-1" style="text-align:center">List</th>
                                          <th  class="col-md-1 col-sm-1 col-xs-1 col-lg-1" style="text-align:center">Approve</th>                          
                                          </tr>
                                          </thead>   
                                          
                                           <g:each var="objmainMenu" in="${mainMenu}">
                                                  <g:if test="${objmainMenu.modl.id==objmodule.id && objmainMenu.menuGrp.id==objgrpMenu.id }">
                                                    
                                                   <tbody align="center">
                                                     <tr id="${objmainMenu.id}">
                                                     <td hidden="true"><input name="menuId_${objmainMenu.id}" id="menuId_${objmainMenu.id}" value="${objmainMenu.id}"></td>        
                                                     <td align="left">${objmainMenu.menuName}</td>
                                                     <td><g:checkBox onkeypress=""  onkeyup="" name="createFlg_${objmainMenu.id}" id="createFlg_${objmainMenu.id}"   /></td>
                                                     <td><g:checkBox onkeypress=""   onkeyup="" name="editFlg_${objmainMenu.id}" id="editFlg_${objmainMenu.id}"  /></td>
                                                     <td><g:checkBox onkeypress="" onkeyup="" name="deleteFlg_${objmainMenu.id}" id="deleteFlg_${objmainMenu.id}"  /></td>
                                                     <td><g:checkBox onkeypress=""  onkeyup="" name="viewFlg_${objmainMenu.id}" id="viewFlg_${objmainMenu.id}"  /></td>
                                                     <td><g:checkBox onkeypress=""   onkeyup="" name="approvFlg_${objmainMenu.id}" id="approvFlg_${objmainMenu.id}" /></td>
                                                     </tr>
                                                     <tbody>
                                                  </g:if>
                                          
                                          </g:each>   
                                          </table>
                                                  
                                                  
                                                  
                                                                                                    
                                                </div>
                                            </div>
                                        </div>
                                                     </g:if>
                                                  </g:each>      
                                       
                                                  
                                                  
                                                  
                                                  
                                                                                                    
                                                </div>
                                            </div>
                                        </div>
                                     
                                       </g:each>      
                                      
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                         </div>
                        
                        
        
                                                            
