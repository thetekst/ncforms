<div class="form-group [[+outer_class]] [[+error_class]]" id="[[!+identifier:default=`Form[[+id]]`]]_wrap">
<label for="recaptcha_response_field" class="col-md-3 control-label">
    Security Code <span class="text-danger">*</span>
    <br>
    <span class="recaptcha_only_if_image">Enter the words above:</span>
   <span class="recaptcha_only_if_audio">Enter the numbers you hear:</span>

</label>
<div class="col-md-9">
    <div id="recaptcha_image"></div>
    <input type="text" id="recaptcha_response_field" class="form-control" name="recaptcha_response_field" />
    
    <div>
        <a href="javascript:Recaptcha.reload()">Get another Security Code</a>
    </div>
    <div class="recaptcha_only_if_image">
        <a href="javascript:Recaptcha.switch_type('audio')">Get an audio Security Code</a>
    </div>
    <div class="recaptcha_only_if_audio">
        <a href="javascript:Recaptcha.switch_type('image')">Get an image Security Code</a>
    </div>
    [[!+recaptcha_html]]
    [[!+fi.error.recaptcha:notempty=`<p style="color:#ff0000;">[[!+fi.error.recaptcha]]</p>`]]
</div>
</div>

<div id="recaptcha_widget"></div>

<script type="text/javascript">var RecaptchaOptions = {"theme":"custom","width":"350","height":300,"lang":"en"};</script>
<script type="text/javascript" src="http://www.google.com/recaptcha/api/challenge?k=6Lev-PgSAAAAAM37cuwpxUfkNCOsC_NnVs6OkcBl"></script>
<script type="text/javascript" src="http://www.google.com/recaptcha/api/js/recaptcha_canary.js"></script>
<noscript>
	<div>
        <object data="http://www.google.com/recaptcha/api/noscript?k=6Lev-PgSAAAAAM37cuwpxUfkNCOsC_NnVs6OkcBl" height="300" width="350" style="width: 350px; height: 300px;"></object>
        <textarea name="recaptcha_challenge_field" rows="3" cols="40"></textarea>
        <input type="hidden" name="recaptcha_response_field" value="manual_challenge"/>
	</div>
</noscript>