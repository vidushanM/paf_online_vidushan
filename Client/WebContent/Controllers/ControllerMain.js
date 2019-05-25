$(document).on("click", "#btnLogin", function()
		{
			var result = isValidFormLogin();
			if(result == "true")
				{	$("#formLogin").submit();	}
			else
				{	$("#divStsMsgLogin").html(result);	}
		});


function isValidFormLogin()
{
	//return "true";
	if($.trim($("#txtUserName").val())=="")
	{
		return "Enter Ussssername";
	}
	if($.trim($("#txtPassword").val())=="")
	{
		return "Enter password";
	}
	return "true";
}

function isValidFormItem()
{
	if($.trim($("#txtItemName").val())== ""){
		return "Enter Item Name";
	}
	if($.trim($("#txtItemDesc").val())== ""){
		return "Enter Item Description";
	}
	return "true";
}

$(document).on("click", "#btnSave", function(){
	var result = isValidFormItem();
	if(result == "true"){
		$("#formItems").submit();
	}
	else {
		$("#divStsMsgItem").html(result);
	}
	
});

$(document).on("click", "#btnEdit", function(){
	$("#hidMode").val("update");
	$("#hidId").val($(this).attr("param"));
	$("#txtItemName").val($(this).closest("tr").find('td:eq(1)').text());
	$("#txtItemDesc").val($(this).closest("tr").find('td:eq(2)').text());
	
})

$(document).on("click", "#btnRemove", function(){
	$("#hidMode").val("remove");
	$("#hidID").val($(this).attr("param"));
	var res = confirm("Are you sure?? ");
		if(res == true){
			$("#formItems").submit();
		}
});
