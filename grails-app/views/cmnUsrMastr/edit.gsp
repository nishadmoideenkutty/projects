<%@ page import="cmn.det.CmnUsrMastr" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
                
                <script>
                    $(window).load(function() {                    
                      $("#consignr").select2('val',"${cmnUsrMastrInstance?.loctnId}")
                    });
		$(document).ready(function() {
                  
                $("#showUserName").text($("#usrName").val())
                $("#passDiv").hide();
                $("#restDiv").show();
               
              
                $("#brnchId").change();
                });
               </script>  
	</head>
	<body>
		
		<div id="edit-cmnUsrMastr" class="content scaffold-edit" role="main">
			
			<g:form url="[resource:cmnUsrMastrInstance, action:'update']"  method="POST"  enctype="multipart/form-data">
				<g:hiddenField name="version" value="${cmnUsrMastrInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
                                        
                                        
                                        
                      
				</fieldset>
				 <g:render template="/cmncommon/btnupdate"/>
			</g:form>
		</div>
	</body>
</html>
