<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		
	</head>
	<body>
		
		<div id="create-genAcctMastr" class="content scaffold-create" role="main">
			
			<g:form url="[resource:genAcctMastrInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				 <g:render template="/cmncommon/btncreate"/>
			</g:form>
		</div>
	</body>
</html>
