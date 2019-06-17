function validate_user(uname,upassword){
	$.ajax({
		type:"post",
		url:"/fataljoyusercheck",
		data:{"Username":uname,"Password":upassword},
		success:function(result){
			var obj = JSON.parse(result);
			if(obj.success=="ok"){
				window.location.href = "/fataljoyadmin";
			}
		},
		error:function(a,b,c){
			alert(a+b+c);
		}
	})
}

function logout(){
	window.location.href = "/fataljoylogout";
}
