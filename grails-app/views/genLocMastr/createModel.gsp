<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
                
                
               <script>
               $(document).ready(function(){
               
                 $("#modal-info").modal('show')
                 
                 
                 $("#modal-info").on('hidden.bs.modal', function (e) {
                   url="${createLink(controler:'GenLocMastr',action:'index')}"
               
                  $(location).attr('href',url);

                 });

               });
               
               </script>
	</head>
	<body>
		
		 <div class="modal fade" id="modal-info">
        <div class="modal-dialog modal-lg">
          <div class="modal-content bg-info">
            <div class="modal-header">
              <h4 class="modal-title">Location</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
             
                      <g:form url="[resource:genLocMastrInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				
                                <fieldset class="buttons">
                                        
                                        <button type="submit" class="save btn btn-info btn-sm" onclick="return validateSave();" onkeypress="return validateSave();"><i class="fas fa-save"></i>Save</button>
                                        <a  class="cancel btn btn-info btn-sm" onclick="history.go(-1)" ><i class="far fa-arrow-alt-circle-left"></i> Back</a>
				</fieldset>
			</g:form>
            </div>
           
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
	</body>
</html>


 
