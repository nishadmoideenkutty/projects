   <%@ page import="inv.det.InvItmMastr" %>
<html>
    <head>
        <meta name="layout" content="main">
   <link rel="stylesheet" href="${assetPath(src: 'jquery.fileupload.css')}">
   <link rel="stylesheet" href="${assetPath(src: 'jquery.fileupload-ui.css')}">
  
   
    <noscript>
    <link rel="stylesheet" href="${assetPath(src: 'jquery.fileupload-noscript.css')}">
   </noscript>
   
    <script src="${assetPath(src: 'jquery.ui.widget.js')}"></script>
   
   <script src="${assetPath(src: 'jquery.fileupload.js')}"></script>
   
     <script src="${assetPath(src: 'jquery.fileupload-process.js')}"></script>
    <!-- The File Upload image preview & resize plugin -->
   <script src="${assetPath(src: 'jquery.fileupload-image.js')}"></script>
  
    <!-- The File Upload audio preview plugin -->
    <script src="${assetPath(src: 'jquery.fileupload-audio.js')}"></script>
    <!-- The File Upload video preview plugin -->
    <script src="${assetPath(src: 'jquery.fileupload-video.js')}"></script>
    <!-- The File Upload validation plugin -->
    <script src="${assetPath(src: 'jquery.fileupload-validate.js')}"></script>
    <!-- The File Upload user interface plugin -->
    <script src="${assetPath(src: 'jquery.fileupload-ui.js')}"></script>
   
  
  
     <script src="${assetPath(src: 'demo.js')}"></script>
 <style>
      #navigation {
        margin: 10px 0;
      }
      @media (max-width: 767px) {
        #title,
        #description {
          display: none;
        }
      }
    </style>
   
<script>
   


   
</script>
   
    </head>
    <body>
       <div class="container">
      <ul class="nav nav-tabs" id="navigation">
        <li>
          <a href="https://github.com/blueimp/jQuery-File-Upload">Project</a>
        </li>
        <li class="active">
          <a href="#">Demo</a>
        </li>
        <li>
          <a href="https://github.com/blueimp/jQuery-File-Upload/wiki">Wiki</a>
        </li>
        <li>
          <a href="https://blueimp.net">Author</a>
        </li>
      </ul>
      <h1 id="title">jQuery File Upload Demo</h1>
      <blockquote id="description">
        <p>
          File Upload widget with multiple file selection, drag&amp;drop
          support, progress bars, validation and preview images, audio and video
          for jQuery.<br />
          Supports cross-domain, chunked and resumable file uploads and
          client-side image resizing.<br />
          Works with any server-side platform (PHP, Python, Ruby on Rails, Java,
          Node.js, Go etc.) that supports standard HTML form file uploads.
        </p>
      </blockquote>
      <!-- The file upload form used as target for the file upload widget -->
      <form
        id="fileupload"
        action="https://jquery-file-upload.appspot.com/"
        method="POST"
        enctype="multipart/form-data">
        <!-- Redirect browsers with JavaScript disabled to the origin page -->
     
        <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
        <div class="row fileupload-buttonbar">
          <div class="col-lg-7">
            <!-- The fileinput-button span is used to style the file input field as button -->
            <span class="btn btn-success fileinput-button">
              <i class="glyphicon glyphicon-plus"></i>
              <span>Add files...</span>
              <input type="file" name="files[]" multiple />
            </span>
            <button type="submit" class="btn btn-primary start">
              <i class="glyphicon glyphicon-upload"></i>
              <span>Start upload</span>
            </button>
            <button type="reset" class="btn btn-warning cancel">
              <i class="glyphicon glyphicon-ban-circle"></i>
              <span>Cancel upload</span>
            </button>
            <button type="button" class="btn btn-danger delete">
              <i class="glyphicon glyphicon-trash"></i>
              <span>Delete selected</span>
            </button>
            <input type="checkbox" class="toggle" />
            <!-- The global file processing state -->
            <span class="fileupload-process"></span>
          </div>
          
          <div class="col-lg-5 fileupload-progress fade">           
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
              <div class="progress-bar progress-bar-success" style="width: 0%;"></div>
            </div>
            <!-- The extended global progress state -->
            <div class="progress-extended">&nbsp;</div>
          </div>
        </div>
        <!-- The table listing the files available for upload/download -->
        <table role="presentation" class="table table-striped">
          <tbody class="files"></tbody>
        </table>
      </form>
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Demo Notes</h3>
        </div>
        <div class="panel-body">
          <ul>
            <li>
              The maximum file size for uploads in this demo is
              <strong>999 KB</strong> (default file size is unlimited).
            </li>
            <li>
              Only image files (<strong>JPG, GIF, PNG</strong>) are allowed in
              this demo (by default there is no file type restriction).
            </li>
            <li>
              Uploaded files will be deleted automatically after
              <strong>5 minutes or less</strong> (demo files are stored in
              memory).
            </li>
            <li>
              You can <strong>drag &amp; drop</strong> files from your desktop
              on this webpage (see
              <a
                href="https://github.com/blueimp/jQuery-File-Upload/wiki/Browser-support"
                >Browser support</a
              >).
            </li>
            <li>
              Please refer to the
              <a href="https://github.com/blueimp/jQuery-File-Upload"
                >project website</a
              >
              and
              <a href="https://github.com/blueimp/jQuery-File-Upload/wiki"
                >documentation</a
              >
              for more information.
            </li>
            <li>
              Built with the
              <a href="https://getbootstrap.com/">Bootstrap</a> CSS framework
              and Icons from <a href="https://glyphicons.com/">Glyphicons</a>.
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- The blueimp Gallery widget -->
    <div
      id="blueimp-gallery"
      class="blueimp-gallery blueimp-gallery-controls"
      aria-label="image gallery"
      aria-modal="true"
      role="dialog"
      data-filter=":even"
    >
      <div class="slides" aria-live="polite"></div>
      <h3 class="title"></h3>
      <a
        class="prev"
        aria-controls="blueimp-gallery"
        aria-label="previous slide"
        aria-keyshortcuts="ArrowLeft"
      ></a>
      <a
        class="next"
        aria-controls="blueimp-gallery"
        aria-label="next slide"
        aria-keyshortcuts="ArrowRight"
      ></a>
      <a
        class="close"
        aria-controls="blueimp-gallery"
        aria-label="close"
        aria-keyshortcuts="Escape"
      ></a>
      <a
        class="play-pause"
        aria-controls="blueimp-gallery"
        aria-label="play slideshow"
        aria-keyshortcuts="Space"
        aria-pressed="false"
        role="button"
      ></a>
      <ol class="indicator"></ol>
    </div>
    <!-- The template to display files available for upload -->
    <script id="template-upload" type="text/x-tmpl">
    for (var i=0, file; file=o.files[i]; i++) {  }
      {% for (var i=0, file; file=o.files[i]; i++) {  %}
   
         
          <tr class="template-upload fade{%=o.options.loadImageFileTypes.test(file.type)?' image':''%}">
              <td>
                  <span class="preview"></span>
              </td>
              <td>
                  <p class="name">{%=file.name%}</p>
                  <strong class="error text-danger"></strong>
              </td>
              <td>
                  <p class="size">Processing...</p>
                  <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
              </td>
              <td>
                  {% if (!o.options.autoUpload && o.options.edit && o.options.loadImageFileTypes.test(file.type)) { %}
                    <button class="btn btn-success edit" data-index="{%=i%}" disabled>
                        <i class="glyphicon glyphicon-edit"></i>
                        <span>Edit</span>
                    </button>
                  {% } %}
                  {% if (!i && !o.options.autoUpload) { %}
                      <button class="btn btn-primary start" disabled>
                          <i class="glyphicon glyphicon-upload"></i>
                          <span>Start</span>
                      </button>
                  {% } %}
                  {% if (!i) { %}
                      <button class="btn btn-warning cancel">
                          <i class="glyphicon glyphicon-ban-circle"></i>
                          <span>Cancel</span>
                      </button>
                  {% } %}
              </td>
          </tr>
      {% } %}
    </script>
    <!-- The template to display files available for download -->
    <script id="template-download" type="text/x-tmpl">
      {% for (var i=0, file; file=o.files[i]; i++) { %}
          <tr class="template-download fade{%=file.thumbnailUrl?' image':''%}">
              <td>
                  <span class="preview">
                      {% if (file.thumbnailUrl) { %}
                          <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                      {% } %}
                  </span>
              </td>
              <td>
                  <p class="name">
                      {% if (file.url) { %}
                          <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                      {% } else { %}
                          <span>{%=file.name%}</span>
                      {% } %}
                  </p>
                  {% if (file.error) { %}
                      <div><span class="label label-danger">Error</span> {%=file.error%}</div>
                  {% } %}
              </td>
              <td>
                  <span class="size">{%=o.formatFileSize(file.size)%}</span>
              </td>
              <td>
                  {% if (file.deleteUrl) { %}
                      <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                          <i class="glyphicon glyphicon-trash"></i>
                          <span>Delete</span>
                      </button>
                      <input type="checkbox" name="delete" value="1" class="toggle">
                  {% } else { %}
                      <button class="btn btn-warning cancel">
                          <i class="glyphicon glyphicon-ban-circle"></i>
                          <span>Cancel</span>
                      </button>
                  {% } %}
              </td>
          </tr>
      {% } %}
    </script>
    </body>
</html>
