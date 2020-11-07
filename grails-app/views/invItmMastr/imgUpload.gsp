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

  // $('.filter-container').filterizr({gutterPixels: 3});
    $('.btn[data-filter]').on('click', function() {
      $('.btn[data-filter]').removeClass('active');
      $(this).addClass('active');
    });
  });
   $(document).ready(function(){
   
   
         $("#itmMainImage").change(function(){
   
                var imgbytes = this.files[0].size; // Image Size returned in bytes.
              var imgkbytes = Math.round(parseInt(imgbytes)/1024); // convert into KiloBytes
   
            
             if(1024 < imgkbytes){
//                alert("Try to upload file less than 1MB!"); 
               toastr.warning("Try to upload file less than 1MB!");
               $("#itmMainImage").val("")
               return false;
                } 
             $("#subMainImage").click();
            
            });
   
            $("#itmImage").change(function(){
            
          
           
          var stats = true;
         $.each(this.files, function(i, obj){
         
   
              var imgbytes = obj.size; // Image Size returned in bytes.
              var imgkbytes = Math.round(parseInt(imgbytes)/1024); // convert into KiloBytes
              
                   if(1024 < imgkbytes)
                     {                       
                        
                          $("#itmImage").val("");

                        alert("Image Size less than 1 MB is allowed.!!");
                        stats=false;
                        return false;
                     }
   
   
             var file = obj;
            
          /*    var tag= '<div class="col-sm-2" id="mn_'+cnt+'" >'+
                    '<div class="card-body">'+
                   '<span class="badge bg-success float-right" id="del_'+cnt+'" onclick="deleteImg(this);" ><i class="fas fa-calendar-times"></i></span>'+
                    '<img src="'+ URL.createObjectURL(file)+'" alt="upload" class="img-fluid" id="imgDyn" width="100%">'+
      
                    ' </div>'+
                    '</div>';
                
         
               $("#imgAdd").append(tag)     */
               
         cnt++
         });
       if(stats)
       $("#subImage").click();
           
            /* if (this.files[0].size > 1048576) { 
               toastr.warning("Try to upload file less than 1MB!");
               $("#profPic").val("")
               return fasle;
            } 
            $("#imgDyn").attr("src", URL.createObjectURL(this.files[0]));
            $("#imgDyn").width(200).height(200);*/
   
            
            });
   
   });
   
   function deleteImg(a,b)
   {
    var curId=a.id       
    var n = curId.lastIndexOf("_");       
    var res = curId.substring(n+1,curId.length);
    
    
   
         var parameters = {
            "id":res                                
            }
            <g:remoteFunction controller="InvItmMastr" action="deleteImage"  params="parameters"  />
            
     
     $("#imgAdd_"+res).remove()
     $("#imgMainAdd_"+res).remove()
     
   
   }
</script>

   

    </head>
    <body>
   
   
   <g:form enctype='multipart/form-data' method='POST' action='saveimage' controller='InvItmMastr'>
   
  

    <a href="${createLink(controller:controllerName,action: 'index')}" type="submit" class="list btn bg-gradient-gray btn-sm"><i class="fa fa-list-alt"></i> List</a>    
    <a   href="#"  class="cancel btn bg-gradient-gray btn-sm" onclick="history.go(-1)" style="border:1px solid #8ECAE5"  ><i class="far fa-arrow-alt-circle-left"></i> Back</a>
   
                 <g:hiddenField name="id" value="${invItmMastrInstance?.id}" />
   
   
    <div style="width:100%;height:10px" ></div>
   
   
   <div class="col-6">
            <div class="card card-primary">
              <div class="card-header">
                <div class="card-title">
                MAIN IMAGE
                </div>
              </div>
              <div class="card-body">
   
      <div class="form-group">
                    <label for="exampleInputFile">Image Upload</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="itmMainImage" name="itmMainImage" accept="image/*" />
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                      <div class="input-group-append">
                       
                          <button  id="subMainImage" class="input-group-text"  type='submit'>Submit</button>
                      </div>
                    </div>
                  </div>
   
                <div class="row">
   
   
   
   
                  <g:each status="i" var="tmpInvItmImg" in="${inv.det.InvItmImg.findAllByDelFlgAndStatsFlgAndItm('N','M',InvItmMastr.get(params.id))}">
                            
                  
                    <div class="col-sm-2"  id="imgMainAdd_${tmpInvItmImg?.id}">
                   
                    <a href="#" >
                      <img src="${createLink(controller:'GenEcom', action:'itmImgShow',id:tmpInvItmImg.id)}?text=${i}" class="img-fluid mb-2" alt="white sample"/>
                    </a>
                    <a  href="#" style="width:100%;" class="badge bg-warning" id="delMain_${tmpInvItmImg?.id}" onclick="deleteImg(this,1);" ><i class="fas fa-trash"></i>&nbsp;Delete</a>
                  </div>
   
                  </g:each>
   
                </div>
              </div>
            </div>
          </div>
   
   
   <div class="col-12">
            <div class="card card-primary">
              <div class="card-header">
                <div class="card-title">
                IMAGES
                </div>
              </div>
              <div class="card-body">
   
      <div class="form-group">
                    <label for="exampleInputFile">Image Upload</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="itmImage" name="itmImage[]" accept="image/*" multiple/>
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                      <div class="input-group-append">
                       
                          <button  id="subImage" class="input-group-text"  type='submit'>Submit</button>
                      </div>
                    </div>
                  </div>
   
                <div class="row">
   
   
   
   
                  <g:each status="i" var="tmpInvItmImg" in="${inv.det.InvItmImg.findAllByDelFlgAndStatsFlgAndItm('N','A',InvItmMastr.get(params.id))}">
                            
                  
                    <div class="col-sm-2"  id="imgAdd_${tmpInvItmImg?.id}">
                   
                    <a href="#" >
                      <img src="${createLink(controller:'GenEcom', action:'itmImgShow',id:tmpInvItmImg.id)}?text=${i}" class="img-fluid mb-2" alt="white sample"/>
                    </a>
                    <a  href="#" style="width:100%;" class="badge bg-danger" id="del_${tmpInvItmImg?.id}" onclick="deleteImg(this,0);" ><i class="fas fa-trash"></i>&nbsp;Delete</a>
                  </div>
   
                  </g:each>
   
                </div>
              </div>
            </div>
          </div>

     </g:form>
   
    </body>
</html>
