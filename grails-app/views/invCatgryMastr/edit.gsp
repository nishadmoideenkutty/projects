<%@ page import="inv.det.InvCatgryMastr" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		
	</head>
	<body>
		
		<div id="edit-invCatgryMastr" class="content scaffold-edit" role="main">
			
			<g:form url="[resource:invCatgryMastrInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${invCatgryMastrInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<g:render template="/cmncommon/btnupdate"/>
			</g:form>
		</div>
	</body>
</html>
