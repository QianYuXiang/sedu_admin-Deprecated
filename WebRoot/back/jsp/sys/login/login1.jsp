<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="/include/header.inc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��¼Զ��ƽ̨����ϵͳ��̨</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
	background:#02609c;
}
-->
</style>
<script type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
	function enterSubmit(event) {
		var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;   
        if (keyCode == 13) {   
        	document.loginForm.submit();
        }
	}
//-->
</script>
</head>

<body onLoad="MM_preloadImages('<%=contextPath%>/back/images/login_09_1.gif','<%=contextPath%>/back/images/login_10_1.gif')">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#02395f">&nbsp;</td>
  </tr>
  <tr>
    <td height="607" align="center" background="<%=contextPath%>/back/images/login_02.gif"><table width="974" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="331" background="<%=contextPath%>/back/images/login_01.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0" height="331">
          <tr>
            <td colspan="3">&nbsp;</td>
            </tr>
          <tr>
            <td width="393" height="50">&nbsp;</td>
            <td height="50" align="center"><div align="center"><font style="height:1;font-size:9pt; color:#bfdbeb;filter:glow(color=#1070a3,strength=1)"><s:actionerror cssStyle="color:red;" /></font></div></td>
            <td width="407" height="50">&nbsp;</td>
          </tr>
          </table></td>
      </tr>
      <tr>
        <td height="116"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="393" height="116" background="<%=contextPath%>/back/images/login_05.gif">&nbsp;</td>
            <td width="174"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="81" background="<%=contextPath%>/back/images/login_06.gif">
                <form action="<%=contextPath%>/sys/backLogin!login.action" name="loginForm" method="post" style="margin: 0px;">
                <table width="174" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="24%"><div align="center"><font style="height:1;font-size:9pt; color:#bfdbeb;filter:glow(color=#1070a3,strength=1)">�û�</font></div></td>
                    <td width="76%" colspan="2"><input type="text" name="user.loginName"  style="width:125px; height:20px; background:#32a2e3; font-size:12px; border:solid 1px #0468a7; color:#14649f;"></td>
                  </tr>
                  <tr>
                    <td><div align="center"><font style="height:1;font-size:9pt; color:#bfdbeb;filter:glow(color=#1070a3,strength=1)">����</font></div></td>
                    <td colspan="2"><input onkeyup="enterSubmit(event)" type="password" name="user.loginPwd"  style="width:125px; height:20px; background:#32a2e3; font-size:12px; border:solid 1px #0468a7; color:#14649f;"></td>
                  </tr>
                  <tr>
                    <td><div align="center"><font style="height:1;font-size:9pt; color:#bfdbeb;filter:glow(color=#1070a3,strength=1)">��֤��</font></div></td>
                    <td><input onkeyup="enterSubmit(event)" type="text" name="randomCode"  style="width:50px; height:20px; background:#32a2e3; font-size:12px; border:solid 1px #0468a7; color:#14649f;" maxlength="4">&nbsp;</td>
                    <td><img border="0" src="<%=contextPath%>/util/randomCode.action" alt="��֤�룬���ͼƬ����" onclick="this.src='<%=contextPath%>/util/randomCode.action?random='+Math.random();" style="cursor:pointer"/></td>
                  </tr>
                </table>
                </form>
                </td>
                </tr>
              <tr>
                <td height="35"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="50" height="35"><img src="<%=contextPath%>/back/images/login_08.gif" width="50" height="35"></td>
                    <td width="46"><a href="javascript:document.loginForm.submit()"><img src="<%=contextPath%>/back/images/login_09.gif" name="Image1" width="46" height="35" border="0" id="Image1" onMouseOver="MM_swapImage('Image1','','<%=contextPath%>/back/images/login_09_1.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
                    <td width="45"><a href="javascript:document.loginForm.reset()"><img src="<%=contextPath%>/back/images/login_10.gif" name="Image2" width="45" height="35" border="0" id="Image2" onMouseOver="MM_swapImage('Image2','','<%=contextPath%>/back/images/login_10_1.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
                    <td width="33"><img src="<%=contextPath%>/back/images/login_11.gif" width="33" height="35"></td>
                    </tr>
                  </table></td>
                </tr>
              </table></td>
            <td width="407" background="<%=contextPath%>/back/images/login_07.gif">&nbsp;</td>
            </tr>
          </table></td>
      </tr>
      <tr>
        <td height="160" background="<%=contextPath%>/back/images/login_12.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="#02609c">&nbsp;</td>
  </tr>
</table>
</body>
</html>

