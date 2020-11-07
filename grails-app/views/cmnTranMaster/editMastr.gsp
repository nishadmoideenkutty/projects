<%@ page import="cmn.det.CmnTranMaster" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">

    </head>
    <body>

        <div id="edit-cmnTranMaster" class="content scaffold-edit" role="main">

            <g:form url="[resource:cmnTranMasterInstance, action:'update']" method="PUT" useToken="true">



                <g:hiddenField name="version" value="${cmnTranMasterInstance?.version}" />
                <g:hiddenField name="mastr" value="${mastr}"/>
                

         
           <!--  <fieldset class="buttons">
                     
                    <button type="submit" class="update btn" onclick="return validateSave();" onkeypress="return validateSave();" ><i class="fa fa-save"></i> Update</button>
                    <a  class="cancel btn" onclick="backClick();" ><i class="fa fa-step-backward"></i> Back</a>
            </fieldset>-->


                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>

            <fieldset class="buttons" align="center" style="text-align: center;">

                    <button type="submit" class="update btn" onclick="return validateSave();" onkeypress="return validateSave();" ><i class="fa fa-save"></i> Update</button>
                </fieldset>


            </g:form>
        </div>
    </body>
</html>
