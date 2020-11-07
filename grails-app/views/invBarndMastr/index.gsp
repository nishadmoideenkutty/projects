
<%@ page import="inv.det.InvBarndMastr" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<link href="${resource(dir: 'css', file: 'jsgrid.css')}" rel="stylesheet">
                <link href="${resource(dir: 'css', file: 'jsgrid-theme.css')}" rel="stylesheet">
                
                
                <script src="${resource(dir: 'js', file: 'jsgrid.js')}" type="text/javascript"></script>
                
                
        <script>                 
$(document).ready(function(){

      

});

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
            url: "${createLink(controller:'invBarndMastr',action: 'jsGridData')}",
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
            { name: "brandCd", type: "text" ,title:"Code"},
            { name: "brandName", type: "text" ,title:"Name" ,id:"brandName"},
            { name: "companyName", type: "text" ,title:"Company"},


            ],
            rowClick: function (args) {                                                  
            var url = "edit/" + args.item.id;                   
            window.location = url;
            },
            });
            //$('#selctr').find('input:first').focus();
             $('input[type="text"]').get(2).focus();
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