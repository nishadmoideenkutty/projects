<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		
	</head>
	<body>
		
		<div id="create-cmnRoleMastr" class="content scaffold-create" role="main">
			
			<g:form url="[resource:cmnRoleMastrInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
                                <div style="width:100%;height:25px" ></div>
				 <g:render template="/cmncommon/btncreate"/>
			</g:form>
		</div>
	</body>
</html>
