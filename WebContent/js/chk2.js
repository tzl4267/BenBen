<!--
function formerr(){

if (document.form1.num1.value.length <1)
  { alert("请输入贷款总额（单位：元）！");
	document.form1.num1.value="";
 	document.form1.num1.focus(); return (false); }
	
	if(isNaN(parseFloat(document.form1.num1.value)))
	{
	  alert("贷款总额不是数字，请重新输入！");
	  document.form1.num1.focus();
	  return false;
	}
//---------------------------------------------------------------------	
if (document.form1.num2.value.length <1)
  { alert("请输入贷款年利率！");
	document.form1.num2.value="";
 	document.form1.num2.focus(); return (false); }
	
//---------------------------------------------------------------------		
	if (document.form1.num3.value.length <1)
  { alert("请输入贷款期限（单位：年）！");
	document.form1.num3.value="";
 	document.form1.num3.focus(); return (false); }
	
		if(isNaN(parseFloat(document.form1.num3.value)))
	{
	  alert("贷款期限不是数字，请重新输入！");
	  document.form1.num3.focus();
	  return false;
	}
	
		if (document.form1.num4.value.length <1)
  { alert("请输入起贷日期（日期格式：YYYY-MM-DD）！");
	document.form1.num4.value="";
 	document.form1.num4.focus(); return (false); }
	
    document.form1.Submit.disabled =true;
    return true;

}


