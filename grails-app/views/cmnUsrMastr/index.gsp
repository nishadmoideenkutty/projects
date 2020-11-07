
<%@ page import="cmn.det.CmnUsrMastr" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<link href="${resource(dir: 'css', file: 'jsgrid.css')}" rel="stylesheet">
                <link href="${resource(dir: 'css', file: 'jsgrid-theme.css')}" rel="stylesheet">
                
                
                <script src="${resource(dir: 'js', file: 'jsgrid.js')}" type="text/javascript"></script>
                
                
   <script>                 
    
$(function() {
                <g:each status="i" var="objCmnBranchMastr" in="${cmn.det.CmnBranchMastr.findAllByDelFlgAndStatsFlg('N','A')}">               
                             brnch.push({ Name:"${objCmnBranchMastr?.brnchName}",Id:"${objCmnBranchMastr?.id}"})
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
                            url: "${createLink(controller:'cmnUsrMastr',action: 'jsGridData')}",
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
                    { name: "usrName", type: "text" ,title:"Show Name"},
                     { name: "usrCd", type: "text" ,title:"User Name"},                                                      
                     { name: "onlineFlg", type: "select" ,title:"Online Status",filtering:false, 
                       items: [
                            { Name: "All", Id: '' },
                            { Name: '<span class="badge bg-green"><i class="fa fa-user-circle" aria-hidden="true"></i></span>' , Id: 'Y' },
                            { Name: '<span class="badge bg-orange"><i class="fa fa-user-circle" aria-hidden="true"></i></span>', Id: 'N'},                           
                       ], valueField: "Id",
                       textField: "Name" },
                      { name: "statsFlg", type: "select" ,title:"Status",
                       items: [
                            { Name: "All", Id: '' },
                            { Name: 'Active' , Id: 'A' },
                            { Name: 'Inactive', Id: 'I'},                           
                       ], valueField: "Id",
                       textField: "Name" },

                  ],
                    rowClick: function (args) { 
                   
                        var url = "edit/" + args.item.id;                   
                         window.location = url;
                      
                },
            });

        });
        var brnch=[{ Name: "All", Id: '' }]
        $(document).ready(function(){
            
        
               
                
              
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
