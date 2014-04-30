$(function(){
	// Upload foto siswa
	$(document).on('change',"[name='foto_siswa']",function(){
		$progress = $(this).parent().find('.progress');
		$bar = $progress.find('.progress-bar');
		$("[name='upload-foto'").removeAttr('disabled');
		$("[name='upload-foto'").click(function(){
			$('#biodata').ajaxSubmit({
				url:location.pathname,
				beforeSend:function(){
					$progress.show();
				},
				uploadProgress: function(a, b, c, d) {
			        var percentVal = d + '%';
			        $bar.width(percentVal);
			    },
			    complete:function(a){
			    	$bar.width(0);
			    	$progress.hide();
			    	$("[name='upload-foto'").attr('disabled','');
			    	$("[name='foto_siswa']").val('');
			    	$('#body').load(location.pathname+"?x=1")
			    }
			});
		});
	});
	// Delete pendidikan formal
	$(document).on('click',"[delete]",function(){
		$conf = confirm('Hapus?');
		if($conf){
			$(this).parent().parent().fadeOut(500);
			$data = "id="+$(this).attr('rel-id')+"&delete="+$(this).attr('delete');
			$.ajax({url:location.pathname,type:'post',data:$data});
		}
	});
});