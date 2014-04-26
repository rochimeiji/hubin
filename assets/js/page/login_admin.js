$.get('assets/js/jquery.validate.js',function(){
	$("#login_admin").validate({
		rules: {
			user: "required",
			pass: "required"
		},
		messages: {
			user: "Masukan Username",
			pass: "Masukan Password"
		}
	});
})