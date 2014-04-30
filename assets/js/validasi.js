$.get('assets/js/jquery.validate.js',function(){
	// Validasi Login
	$('#login').validate({
		rules: {
			user: "required",
			pass: "required",
		},
		messages: {
			user: "Masukan Username",
			pass: "Masukan Password",
		}
	});
	// Validasi User
	$('#user').validate({
		rules: {
			user: "required",
			old_pass: "required",
			pass: {required:true,minlength: 5},
			re_pass: {required:true,minlength: 5,equalTo: "#pass"},
		},
		messages: {
			user: "Masukan Username",
			old_pass: "Masukan Old Password",
			pass: {required:"Masukan Password",minlength:"Minimal 5 karakter"},
			re_pass: {required:"Masukan Retype Password",minlength:"Minimal 5 karakter",equalTo:"Samakan dengan Password diatas!"},
		}
	});
	// Validasi Biodata
	$('#biodata').validate({
		rules:{
			nama_siswa: "required",
			email_siswa: "email",
			tgl_lhr_siswa: "date",
			email_perusahaan: "email",
			tlp_siswa: "number",
			ktp_siswa: "number",
		},
		messages:{
			nama_siswa: "Masukan Nama",
			email_siswa: "Masukan email dengan benar",
			tgl_lhr_siswa: "Masukan tanggal lahir dengan benar",
			email_perusahaan: "Masukan email dengan benar",
			tlp_siswa: "Masukan dengan angka",
			ktp_siswa: "Masukan dengan angka",
		}
	});
	// Validasi Pendidikan Formal
	$('#pendidikan-formal').validate({
		rules:{
			// awal_pndk_formal: {required:true,number:true},
			akhir_pndk_formal: {required:true,number:true},
			nama_pndk_formal: {required:true},
		},
		messages:{
			// awal_pndk_formal: {required:"Isi awal tahun",number:"Masukan tahun dalam angka"},
			akhir_pndk_formal: {required:"Isi dengan tahun",number:"Masukan tahun dalam angka"},
			nama_pndk_formal: {required:"Pendidkan Formal harus diisi"},
		}
	});
	// Validasi Pendidikan Formal
	$('#pendidikan-informal').validate({
		rules:{
			// awal_pndk_formal: {required:true,number:true},
			akhir_pndk_informal: {required:true,number:true},
			nama_pndk_informal: {required:true},
		},
		messages:{
			// awal_pndk_formal: {required:"Isi awal tahun",number:"Masukan tahun dalam angka"},
			akhir_pndk_informal: {required:"Isi dengan tahun",number:"Masukan tahun dalam angka"},
			nama_pndk_informal: {required:"Pendidkan Informal harus diisi"},
		}
	});
});