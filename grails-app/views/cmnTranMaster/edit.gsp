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

                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                            <g:render template="/cmncommon/btnupdate"/>


            </g:form>
        </div>
    </body>
</html>
