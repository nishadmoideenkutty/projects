
<%@ page import="inv.det.InvItmMastr" %>
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
            url: "${createLink(controller:'InvItmMastr',action: 'jsGridData')}",
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
                    { name: "brand", type: "text" ,title:"Brand",width:100},
                    { name: "itmName", type: "text" ,title:"Name",width:200},
                    { name: "itmCd", type: "text" ,title:"Code",width:100},
                    { name: "hsnCd", type: "text" ,title:"HSN Code",width:60},
                    
                    { name: "itmBarCd", type: "text" ,title:"Barcode"},
                    { name: "catgry", type: "text" ,title:"Category"},
                    
                     { name: "mrp", type: "text" ,title:"MRP"},
                    { name: "opRate", type: "text" ,title:"Rate"},
                     { name: "disc", type: "text" ,title:"Discount(%)"},
                   
                   { name: "estimate", title: "", align: "center",width:"25",
                      itemTemplate: function(value, item) {                      
                       
                                        return $("<button class='btn btn-info btn-sm'><i class='fa fa-upload' aria-hidden='true'></i>")
                                         .on("click", function() {                                                                                                                                                                     
                                              
                                             var url = "imgUpload/" + item.id;                   
                                             window.location = url;
                                         return false;
                          });
                          
                      }
                      }
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