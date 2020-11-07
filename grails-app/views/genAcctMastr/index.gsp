
<%@ page import="gen.det.GenAcctMastr" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<link href="${resource(dir: 'css', file: 'jsgrid.css')}" rel="stylesheet">
                <link href="${resource(dir: 'css', file: 'jsgrid-theme.css')}" rel="stylesheet">
                
                
                <script src="${resource(dir: 'js', file: 'jsgrid.js')}" type="text/javascript"></script>
                
                
    <script>                 

            $(function() {

            var loc=[ { Name: "All", Id: '' }]
            <g:each status="i" var="objGenLocMastr" in="${gen.det.GenLocMastr.findAllByDelFlg("N")}">   

            loc.push({Name: "${objGenLocMastr?.locName}",Id:${objGenLocMastr?.id}})
            </g:each>
            
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
            url: "${createLink(controller:'genAcctMastr',action: 'jsGridData')}",
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
            { name: "acctCd", type: "text" ,title:"Code"},
            { name: "acctName", type: "text" ,title:"Name"},
            { name: "mobl", type: "text" ,title:"Mobile"},
            { name: "email", type: "text" ,title:"Email"},
            { name: "locId", type: "select" ,title:"Location", 
                       items: loc, valueField: "Id",
                       textField: "Name" },

       
            ],
            rowClick: function (args) {                                                  
            var url = "edit/" + args.item.id;                   
            window.location = url;
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

