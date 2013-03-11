<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ include file="/include/header.inc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="expires" content="0" />
<title>查看用户登录历史记录</title>
<link rel="stylesheet" type="text/css" href="<%=contextPath%>/back/style/css_body.css" />
</head>
<body>
<div id="right-content">
<table width="100%" border="0" cellspacing="0"  cellpadding="0" class="lists">
<tr>
	<td class="td_wid_l"><img src="<%=contextPath%>/back/images/tab_03.gif" /></td>
	<td class="lists_top"><font class="lists_fleft">查看用户登录历史记录</font></td>
	<td class="td_wid_l"><img src="<%=contextPath%>/back/images/tab_07.gif" /></td>
</tr>
<tr>
	<td width="12" class="lists_bor"></td>
	<td>
		<table width="100%" border="0" cellspacing="1" cellpadding="0" class="lists_info">
			<tr class="lists_infobg">
				<td>时间</td>
				<td>地址</td>
			</tr>
			<s:iterator value="loginRecordList" var="sta">
				<tr>
					<td><s:date name="loginTime" format="yyyy-MM-dd HH:mm:ss" /></td>
					<td><s:property value="address" /></td>
				</tr>
			</s:iterator>
		</table>
	</td>
	<td width="16" class="lists_tright lists_bor2"></td>
</tr>
<tr>
	<td><img src="<%=contextPath%>/back/images/tab_18.gif" /></td>
	<td class="lists_bottom"></td>
	<td><img src="<%=contextPath%>/back/images/tab_20.gif" /></td>
</tr>
</table>
</body>
</html>