[[!FormIt?
	&hooks=`[[+hooks]]`
	&validate=`[[+validate]]`
	&emailTpl=`[[+emailTpl]]`
	&emailTo=`[[+email]]`
	&emailFrom=`[[+emailFrom]]`
	&redirectTo=`[[+redirectTo:isequalto=`thisPage`:then=`[[*id]]`:else=`[[+redirectTo]]`]]`
	&successMessage=`[[+success_message]]`
	&errTpl=`<div class="alert alert-danger">[[+error]]</div>`
]]

[[!+fi.successMessage:notempty=`<p class="bg-success">[[!+fi.successMessage]]</p>`]]
[[!+fi.validation_error_message:notempty=`<p class="bg-danger">[[!+fi.validation_error_message]]</p>`]]

<form action="[[~[[*id]]]]" id="[[!+identifier]]" class="form-horizontal contact_form" role="form" method="post">
	[[+isSpamHook:notempty=`<input type="hidden" name="nospam:blank" value="[[!+fi.nospam]]" />`]]
	<fieldset>
		[[+fields]]
		<!--recaptcha BEGIN-->
		[[+isRecaptcha:notempty=`[[!$recaptcha]]`]]
		<!--recaptcha END-->
	</fieldset>
	
	<div class="form-group">
        <div class="col-md-offset-3 col-md-9">
            <input type="submit" value="[[+action_button:default=`Submit`]]" class="btn btn-primary submit-contact-us" />
        </div>
    </div>
	
	<input type="hidden" name="FORM_ID" value="[[+id]]" />
	[[+redirectTo:isequalto=`thisPage`:then=`<input type="hidden" name="NCFORM_SUCCESS_MESSAGE" value="[[+success_message]]" />`]]
</form>