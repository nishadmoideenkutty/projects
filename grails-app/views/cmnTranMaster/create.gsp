<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		
	</head>
	<body>
		
		<div id="create-cmnTranMaster" class="content scaffold-create" role="main">
			
			<g:form url="[resource:cmnTranMasterInstance, action:'save']" useToken="true">
                            
                            
                     
                
                <fieldset class="buttons">
                    <a href="${createLink(controller:'cmnTranMaster',action: 'index')}" class="list btn"><i class="fa fa-list-alt"></i> List</a>                                       
                </fieldset>
                
                
<!--                            <fieldset class="buttons">
                                <a href="${createLink(controller:'cmnTranMaster',action: 'index')}" class="list btn"><i class="fa fa-list-alt"></i> List</a>
                                <button type="submit" class="save btn" onclick="return validateSave();" onkeypress="return validateSave();" ><i class="fa fa-save" ></i> Save</button>
                                <a  class="cancel btn" onclick="backClick();" ><i class="fa fa-step-backward"></i> Back</a>
                               </fieldset>-->
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				
                                
                              <fieldset class="buttons" align="center" style="text-align: center;">
                
                 <button type="submit" class="save btn" onclick="return validateSave();" onkeypress="return validateSave();" ><i class="fa fa-save"></i> Save</button>
                  </fieldset>
                  
			</g:form>
		</div>
	</body>
</html>
