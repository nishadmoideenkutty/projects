<%@ page import="cmn.det.CmnBranchMastr" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		
	</head>
	<body>
		
		<div id="edit-cmnBranchMastr" class="content scaffold-edit" role="main">
			
			<g:form url="[resource:cmnBranchMastrInstance, action:'update']" method="POST" enctype="multipart/form-data" >
				<g:hiddenField name="version" value="${cmnBranchMastrInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<g:render template="/cmncommon/btnupdate"/>
			</g:form>
		</div>
	</body>
</html>
