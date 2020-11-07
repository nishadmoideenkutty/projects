
<%@ page import="inv.det.InvCatgryMastr" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<link href="${resource(dir: 'css', file: 'jsgrid.css')}" rel="stylesheet">
                <link href="${resource(dir: 'css', file: 'jsgrid-theme.css')}" rel="stylesheet">
                
                
                <script src="${resource(dir: 'js', file: 'jsgrid.js')}" type="text/javascript"></script>
                
                
      
        <script>  
var catgr=[{Name: "All", Id: ''},{Name: "Parent", Id: 0}]
$(document).ready(function(){

                
            <g:each status="i" var="objInvCatgryMastr" in="${inv.det.InvCatgryMastr.findAllByDelFlgAndStatsFlg("N","A")}">               
            catgr.push( {Name: "${objInvCatgryMastr?.catgryName}",Id:${objInvCatgryMastr?.id} })
           </g:each>  
      

});

            $(function() {

            
            <g:set var="catgrs" value="${inv.det.InvCatgryMastr.findAllByDelFlgAndStatsFlg("N","A")}"/> 
            
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
            url: "${createLink(controller:'invCatgryMastr',action: 'jsGridData')}",
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
            { name: "catgryCd", type: "text" ,title:"Code"},
            { name: "catgryName", type: "text" ,title:"Category Name" ,id:"categoryName"},
            { name: "parantId", type: "select" ,title:"Under Category",id:"parentName", 
                       items: catgr, valueField: "Id",
                       textField: "Name" },     
                     
                       
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