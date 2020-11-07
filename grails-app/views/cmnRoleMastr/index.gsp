
<%@ page import="cmn.det.CmnRoleMastr" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<link href="${resource(dir: 'css', file: 'jsgrid.css')}" rel="stylesheet">
                <link href="${resource(dir: 'css', file: 'jsgrid-theme.css')}" rel="stylesheet">
                
                
                <script src="${resource(dir: 'js', file: 'jsgrid.js')}" type="text/javascript"></script>
                
                
   <script>                 
    
$(function() {

            $("#jsGrid").jsGrid({
                height: "auto",
                width: "100%",
                sorting: true,
                paging: true,
                autoload: true,
                filtering: true,
                
                pageSize: 10,
                pageButtonCount: 5,
                
                
                controller: {
                    loadData: function(filter) {
                        var d = $.Deferred();

                        $.ajax({
                            url: "${createLink(controller:'cmnRoleMastr',action: 'jsGridData')}",
                            dataType: "json",
                            data: filter
                        }).done(function(response) {                        
                            d.resolve(response.rows);
                        });

                        return d.promise();
                    }
                },
                fields: [
                    { name: "id", type: "text" ,title:"ID",visible:false},
                    { name: "roleName", type: "text" ,title:"Role Name"},
                    { name: "roleCd", type: "text" ,title:"Role Code",visible:false},
                    
                    
                ],
            rowClick: function (args) { 
                    if(args.item.roleCd=="Z")
                      {
                        alert("Could not edit this role")
                        return false;
                      }
                      else{
                        var url = "edit/" + args.item.id;                   
                         window.location = url;
                      }
                },
            });

        });
</script>
                
	</head>
	<body>		         
          
          <div style="min-height:250px;">
            <div id="jsGrid"></div>                           
           </div>
          <div align="left" style="height:25px;"></div>
          <g:render template="/cmncommon/btnlist"/>
	</body>
</html>
