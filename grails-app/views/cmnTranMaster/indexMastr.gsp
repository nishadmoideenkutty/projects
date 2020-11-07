
<%@ page import="cmn.det.CmnTranMaster" %>
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
                            url: "${createLink(controller:'cmnTranMaster',action: 'jsGridDataMastr')}",
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
                    { name: "tranCd", type: "text" ,title:"Code"},
                    { name: "tranName", type: "text" ,title:"Name"},
                    
                   
                    
                ],
            rowClick: function (args) {                                                  
                    var url = "editMastr/" + args.item.id;                   
                    window.location = url;
                },
            });

        });
</script>
                
	</head>
	<body>		         
         
            
                
                    
                
       
<!--                <a  class="cancel btn" onclick="backClick();" ><i class="fa fa-step-backward"></i> Back</a>-->
                 <div align="left" style="height:5px;"></div>
          <div style="min-height:250px;">
            <div id="jsGrid"></div>                           
           </div>
          
          
	</body>
</html>
