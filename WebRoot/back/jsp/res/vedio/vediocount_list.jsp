﻿<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/include/header.inc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>视频播放器统计</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" media="screen" href="<%=contextPath%>/back/style/css_body.css" />
<script type="text/javascript" src="<%=contextPath%>/back/script/jquery-1.3.2.js"></script>
<script type="text/javascript" src="<%=contextPath%>/back/script/back_util.js"></script>
<script type="text/javascript" src="<%=contextPath%>/back/script/My97DatePicker/WdatePicker.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript">

	</script>
</head>
<body>
	<!-- 查询块开始 -->
	<div>		
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="lists">
				<tr>
					<td class="td_wid_l"><img src="<%=contextPath%>/back/images/tab_03.gif" /></td>
					<td class="lists_top"><font class="lists_fleft">播放器功能统计</font> <font class="lists_fright"> </font></td>
					<td class="td_wid_r"><img src="<%=contextPath%>/back/images/tab_07.gif" /></td>
				</tr>
				<tr>
					<td class="lists_bor"></td>
					<td>
					<form name="searchForm" id="searchForm" action="vedioCount!queryList.action" method="post">
						<table width="100%" border="0" cellspacing="1" cellpadding="0" align="left" class="lists">
							<tr align="left" >
								<td align="left" style="text-align:left">
							<div class="msg-yw">
									<table border="0" class="lists">
										<tr >
											
											<td>查询时间:
												<input type="text" readonly="readonly" name="Status.beginDate" id="beginDate"
                                                onfocus="WdatePicker({startDate:'%y-%M-01 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss',alwaysUseStartDate:true,autoPickDate:true})" value="<fmt:formatDate value="${Status.beginDate}" pattern="yyyy-MM-dd HH:mm:ss" />" />

                                                -到-
                                               <input type="text" readonly="readonly" name="Status.endDate" id="endDate"
                                               onfocus="WdatePicker({startDate:'%y-%M-01 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss',alwaysUseStartDate:true,autoPickDate:true})"  value="<s:date name="Status.endDate" format="yyyy-MM-dd HH:mm:ss"/>" onclick="updateRes()"/>
											</td>
											<td>
												<s:submit value="查询" />
											
											</td>
										</tr>	
										<tr>
											<td style="text-align: left">
												<div >
												<input type="button" value="当日" onclick="javascript:location.href='vedioCount!queryList.action?Status.now=now'"/>
												<input type="button" value="本周" onclick="javascript:location.href='vedioCount!queryList.action?Status.week=week'"/>
												<input type="button" value="本月" onclick="javascript:location.href='vedioCount!queryList.action?Status.month=month'"/>
												
												</div>
											</td>
										</tr>
									</table>
						</div>
								</td>
                                </tr> 
						</table>
						</form>
					</td>
					<td class="lists_tright lists_bor2"></td>
				</tr>
			
		
			<tr>
				<td  class="lists_bor"></td>
				<td>播放器统计列表</td>
				<td class="lists_tright lists_bor2"></td>
			</tr>
			<tr>
				<td class="lists_bor"></td>
				<td>
					<form name="sellWayForm" method="post" action="vedioCount!queryListforUser.action">
						<table width="100%" border="0" cellspacing="1" cellpadding="0" class="lists_info">
							<tr class="lists_infobg">
								<td width="9%">日期</td>
								<td width="9%">使用人数</td>
								<td width="9%">播放点击次数</td>
								<td width="9%">笔记点击次数</td>
								<td width="9%">笔记下载次数</td>
								<td width="9%">讲义下载次数</td>
								<td width="9%">评价点击次数</td>
							    <td width="9%">测试点击次数</td>
							    <td width="9%">切换点击次数</td>
								<td width="9%">自测点击次数</td>
								<td width="9%">提问点击次数</td>
							</tr>	
							
							</table> 
							<table width="100%" border="0" cellspacing="1" cellpadding="0" class="lists_info">
							<s:iterator value="lista" id="vedio">
							<tr>
								<td width="9%">
									 <s:date name="data"  format="yyyy-MM-dd"/>								
								</td>
								<td width="9%">
									<s:property value="userNo" />						
								</td>
								<td width="9%">
									 <s:property value="vediono" />							
								</td>
								<td width="9%">
									<s:property value="noteNo" />						
								</td>
								<td width="9%">
									 <s:property value="noteLoad" />								
								</td>
								<td width="9%">
									<s:property value="jiangyi" />					
								</td>
								<td width="9%">
									<s:property value="pingjia" />					
								</td>
							    <td width="9%">
									<s:property value="ceshi" />								
								</td>
							   <td width="9%">
									<s:property value="qiehuan" />							
								</td>
								<td width="9%">
									<s:property value="zice" />					
								</td>
								<td width="9%">
									<s:property value="tiwen" />							
								</td>
							</tr>	
							</s:iterator>
							</table> 
						</form>
						
							
				
						
				</td>
				<td class="lists_tright lists_bor2"></td>
			</tr>
			<tr>
				<td class="td_wid_l"><img src="<%=contextPath%>/back/images/tab_18.gif"/></td>
				<td class="lists_bottom"></td>
				<td class="td_wid_r"><img src="<%=contextPath%>/back/images/tab_20.gif" /></td>
			</tr>
		</table>
	</div>
</body>
</html>