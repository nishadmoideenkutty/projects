<%@ page import="inv.det.InvBarndMastr" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		
	</head>
	<body>
		
		<div id="edit-invBarndMastr" class="content scaffold-edit" role="main">
			
			<g:form url="[resource:invBarndMastrInstance, action:'update']" method="PUT" useToken="true">
				<g:hiddenField name="version" value="${invBarndMastrInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<g:render template="/cmncommon/btnupdate"/>
			</g:form>
		</div>
	</body>
</html>
