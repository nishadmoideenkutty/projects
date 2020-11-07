   <%@ page import="inv.det.InvItmMastr" %>
<html>
    <head>
        <meta name="layout" content="main">
   <link rel="stylesheet" href="${assetPath(src: 'ekko-lightbox.css')}">
   
   <script src="${assetPath(src: 'ekko-lightbox.min.js')}"></script>
   

   
<script>
   var cnt=0
  $(function () {
    $(document).on('click', '[data-toggle="lightbox"]', function(event) {
      event.preventDefault();
      $(this).ekkoLightbox({
        alwaysShowClose: true
      });
    });

//    $('.filter-container').filterizr({gutterPixels: 3});
    $('.btn[data-filter]').on('click', function() {
      $('.btn[data-filter]').removeClass('active');
      $(this).addClass('active');
    });
  });
   $(document).ready(function(){
   
            $("#itmImage").change(function(){
            
          
         $.each(this.files, function(i, obj){
         
             var file = obj;
         
              var tag= '<div class="col-sm-2" id="mn_'+cnt+'" >'+
                    '<div class="card-body">'+
                   '<span class="badge bg-success float-right" id="del_'+cnt+'" onclick="deleteImg(this);" ><i class="fas fa-calendar-times"></i></span>'+
                    '<img src="'+ URL.createObjectURL(file)+'" alt="upload" class="img-fluid" id="imgDyn" width="100%">'+
   
                     '<div hidden="true">'+
                     ' <input type="file"  multiple id="saveImg_'+cnt+'" name="saveImg[]"   accept="image/*"/>' + 
                     ' </div>'+   
                    ' </div>'+
                    '</div>';
                
          $("#saveImg_"+cnt).val(file)
         $("#imgAdd").append(tag)     
               
         cnt++
         });
   
            /* if (this.files[0].size > 1048576) { 
               toastr.warning("Try to upload file less than 1MB!");
               $("#profPic").val("")
               return fasle;
            } 
            $("#imgDyn").attr("src", URL.createObjectURL(this.files[0]));
            $("#imgDyn").width(200).height(200);*/
   
            
            });
   
   });
   
   function deleteImg(a)
   {
    var curId=a.id       
    var n = curId.lastIndexOf("_");       
    var res = curId.substring(n+1,curId.length);
    $("#mn_"+res).remove()
    $("#saveImg_"+res).val("");
    $("#itmImage").val("");
   
   }
</script>

   

    </head>
    <body>
   
   
   <g:form enctype='multipart/form-data' method='POST' action='saveimage' controller='InvItmMastr'>
    <input type='file'  multiple id="itmImage" name="itmImage[]" accept="image/*"/>   
    <button type='submit'>Submit</button>

   
   <div class="col-12">
            <div class="card card-primary">
              <div class="card-header">
                <div class="card-title">
                Image
                </div>
              </div>
              <div class="card-body">
                <div class="row" id="imgAdd">
   
   
   
                
   
               
                
   
   
                </div>
              </div>
            </div>
          </div>

     </g:form>
   
    </body>
</html>
