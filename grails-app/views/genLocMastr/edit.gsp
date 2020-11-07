<%@ page import="gen.det.GenLocMastr" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		
	</head>
	<body>
		
		<div id="edit-genLocMastr" class="content scaffold-edit" role="main">
			
			<g:form url="[resource:genLocMastrInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${genLocMastrInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<g:render template="/cmncommon/btnupdate"/>
			</g:form>
		</div>
	</body>
</html>
