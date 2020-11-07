<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		
	</head>
	<body>
		
		<div id="create-genLocMastr" class="content scaffold-create" role="main">
			
			<g:form url="[resource:genLocMastrInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				 <g:render template="/cmncommon/btncreate"/>
			</g:form>
		</div>
	</body>
</html>
