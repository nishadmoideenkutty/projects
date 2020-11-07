    <%@ page import="inv.det.InvItmMastr" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
	
	</head>
	<body>
		
		<div id="edit-invItmMastr" class="content scaffold-edit" role="main">
			
			<g:form url="[resource:invItmMastrInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${invItmMastrInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<g:render template="/cmncommon/btnupdate"/>
			</g:form>
		</div>
	</body>
</html>
