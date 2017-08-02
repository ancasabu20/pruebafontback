var Guardian= Guardian|| {};

Guardian.SignUpController = function () {

    this.$signUpPage = null;
    this.$btnSubmit = null;
    this.$ctnErr = null;
    this.$txtFirstName = null;
    this.$generos = null;
    this.$email= null;
    this.$txtPassword = null;
    this.$birthday = null;
	this.$txtUser = null;
	this.termino = null;
};

Guardian.SignUpController.prototype.init = function () {
    this.$signUpPage = $("#page-signup");
    this.$btnSubmit = $("#btn-submit", this.$signUpPage);
	this.$txtFirstName= $("#txt-first-name", this.$signUpPage);
    this.$ctnErr = $("#ctn-err", this.$signUpPage);
    this.$generos = $("#generos", this.$signUpPage);
    this.$email = $("#email", this.$signUpPage);
    this.$birthday = $("#birthday", this.$signUpPage);
    this.$txtPassword = $("#txt-password", this.$signUpPage);
    this.$txtUser = $("#txt-user", this.$signUpPage);
	this.$termino = $("#termino", this.$signUpPage);
};


Guardian.SignUpController.prototype.resetSignUpForm = function () {

    var invisibleStyle = "bi-invisible",
        invalidInputStyle = "bi-invalid-input";

    this.$ctnErr.html("");
    this.$ctnErr.removeClass().addClass(invisibleStyle);
    this.$txtFirstName.removeClass(invalidInputStyle);
    this.$generos.removeClass(invalidInputStyle);
    this.$email.removeClass(invalidInputStyle);
    this.$txtPassword.removeClass(invalidInputStyle);
    this.$birthday.removeClass(invalidInputStyle);
	this.$txtUser.removeClass(invalidInputStyle);
	this.$termino.removeClass(invalidInputStyle);

	this.$txtFirstName.val("");
    this.$generos.val("");
    this.$email.val("");
    this.$txtPassword.val("");
    this.$birthday.val("");
	this.$txtUser.val("");

};

Guardian.SignUpController.prototype.onSignupCommand = function () {

    var me = this,
        firstName = me.$txtFirstName.val().trim(),
        generos = me.$generos.val().trim(),
        email = me.$email.val().trim(),
        password = me.$txtPassword.val().trim(),
        birthday = me.$birthday.val().trim(),
		user = me.$txtUser.val().trim(),
	
        invalidInput = false,
        invisibleStyle = "bi-invisible",
        invalidInputStyle = "bi-invalid-input";

    // Reset styles.
    me.$ctnErr.removeClass().addClass(invisibleStyle);
    me.$txtFirstName.removeClass(invalidInputStyle);
    me.$generos.removeClass(invalidInputStyle);
    me.$txtPassword.removeClass(invalidInputStyle);
    me.$birthday.removeClass(invalidInputStyle);
	me.$txtUser.removeClass(invalidInputStyle);

    // Flag each invalid field.
    if (firstName.length === 0) {
        me.$txtFirstName.addClass(invalidInputStyle);
        invalidInput = true;
    }
    if (email.length === 0) {
        me.$email.addClass(invalidInputStyle);
        invalidInput = true;
    }
    if (password.length === 0) {
        me.$txtPassword.addClass(invalidInputStyle);
        invalidInput = true;
    }
    if (birthday.length === 0) {
        me.$birthday.addClass(invalidInputStyle);
        invalidInput = true;
    }
	  if (user.length === 0) {
        me.$txtUser.addClass(invalidInputStyle);
        invalidInput = true;
    }
	  
  
        if($("#termino").is(':checked')) {  
    
        } else {  
			alert("Es necesario aceptar los terminos y condiciones");
            invalidInput = true;
        }  
  
    // Make sure that all the required fields have values.
    if (invalidInput) {
        me.$ctnErr.html("<p>Por favor ingrese los datos requeridos.</p>");
        me.$ctnErr.addClass("bi-ctn-err").slideDown();
        return;
    }

	//Guardar 
	sessionStorage.setItem("name",firstName);
	document.location.replace('page/index.html');
  // $.mobile.navigate("#page-signup-succeeded");
	
   return;
             
};