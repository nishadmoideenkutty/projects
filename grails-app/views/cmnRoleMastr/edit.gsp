<%@ page import=.cmn.det.CmnRoleMastr" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
                <script>
                                                
  $(document).ready(function(){
                                                '<g:each status="j" var="menuDtl" in="${cmnRoleMastrInstance?.rolDtls}">'  
                                                   
                                                     '<g:each status="i" var="item" in="${cmn.det.CmnMenuMastr.findAllByStatsFlgAndDelFlg('D','N',[sort: "id", order: "asc"])}">'                                                                                                              
                                                                                                                                                                                                                                                                           
                                                        '<g:if test="${menuDtl.menu.id == item.id}">'
                                                                                                                                                                      
                                                       
                                                          '<g:if test="${menuDtl.viewFlg=='Y'}">'                                                                                                                
                                                            $("#viewFlg_"+${menuDtl.menu.id}).prop('checked', true);
                                                         '</g:if>'
                                                        
                                                         
                                                       
                                                       '</g:if>'  
                                                       
                                                      '</g:each>' 
                                                    
                                                    '</g:each>' 
    
                                                       '<g:each status="j" var="menuDtl" in="${cmnRoleMastrInstance?.rolDtls}">'  
                                                   
                                                     '<g:each status="i" var="item" in="${cmn.det.CmnMenuMastr.findAllByStatsFlgAndDelFlg('A','N',[sort: "id", order: "asc"])}">'                                                                                                              
                                                                                                                                                                                                                                                                           
                                                        '<g:if test="${menuDtl.menu.id == item.id}">'
                                                                                                                                                                      
                                                         '<g:if test="${menuDtl.createFlg=='Y'}">'                                                         
                                                           $("#createFlg_"+${menuDtl.menu.id}).prop('checked', true);
                                                            //$("#createFlg_"+${menuDtl.menu.id}).bootstrapToggle('on')  
                                                         '</g:if>'
                                                          '<g:if test="${menuDtl.editFlg=='Y'}">'                                                                                                                
                                                            $("#editFlg_"+${menuDtl.menu.id}).prop('checked', true);
                                                         '</g:if>'
                                                          '<g:if test="${menuDtl.removeFlg=='Y'}">'                                                                                                                
                                                            $("#deleteFlg_"+${menuDtl.menu.id}).prop('checked', true);
                                                         '</g:if>'
                                                          '<g:if test="${menuDtl.viewFlg=='Y'}">'                                                                                                                
                                                            $("#viewFlg_"+${menuDtl.menu.id}).prop('checked', true);
                                                         '</g:if>'
                                                          '<g:if test="${menuDtl.apprvFlg=='Y'}">'                                                                                                                
                                                            $("#approvFlg_"+${menuDtl.menu.id}).prop('checked', true);
                                                         '</g:if>'   
                                                         
                                                       
                                                       '</g:if>'  
                                                       
                                                      '</g:each>' 
                                                    
                                                    '</g:each>' 
                                                    
  });
                                        
                  
                 </script> 
	</head>
	<body>
		
		<div id="edit-cmnRoleMastr" class="content scaffold-edit" role="main">
			
			<g:form url="[resource:cmnRoleMastrInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${cmnRoleMastrInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				 <g:render template="/cmncommon/btnupdate"/>
			</g:form>
		</div>
	</body>
</html>
