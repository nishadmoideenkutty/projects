<%@ page import="gen.det.GenAcctMastr" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		
	</head>
	<body>
		
		<div id="edit-genAcctMastr" class="content scaffold-edit" role="main">
			
			<g:form url="[resource:genAcctMastrInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${genAcctMastrInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				 <g:render template="/cmncommon/btnupdate"/>
			</g:form>
		</div>
	</body>
</html>
