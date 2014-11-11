<div class="form-group" id="[[+field_id]]_wrapper">
	<label for="[[+field_id]]" class="col-md-3 control-label">
		[[+label]][[+input_validate:isequalto=`1`:then=`&nbsp;<span class="text-danger">*</span>`]]
	</label>
	
	<div class="col-md-9">
		[[+fields]]
		[[!+fi.error.[[+field_id]]]]
	</div>
</div>