<fieldset class="buttons text-center" >
    <a href="${createLink(controller:controllerName,action: 'index')}" type="submit" class="list btn bg-gradient-gray btn-sm"><i class="fa fa-list-alt"></i> List</a>
    <button type="submit" class="save btn bg-gradient-gray btn-sm" onclick="return validateSave();" onkeypress="return validateSave();"><i class="fas fa-save"></i>&nbsp;Save</button>
    <a   href="#"  class="cancel btn bg-gradient-gray btn-sm" onclick="history.go(-1)" style="border:1px solid #8ECAE5"  ><i class="far fa-arrow-alt-circle-left"></i> Back</a>
</fieldset>