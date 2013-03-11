<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/include/header.inc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>视频列表</title>
<link rel="stylesheet" type="text/css" media="screen"	href="<%=contextPath%>/back/style/css_body.css" />
	<script language="JavaScript">
	function All(e)
		{
	    var f=window.f1;
	    for(i=0;i<f.elements.length;i++){
		 if(f.elements[i].name=="voId"){
		      		f.elements[i].checked=e.checked;}
					}
		}
		
	function deleteAll(ObjectForm){
	var i = 0;
	var f=document.f1;
	if(f.voId.length!=null){
		for(var j=0;j<f.voId.length;j++){
	
			if(f.voId[j].checked == true){
			 i++;
			 }
		}
		}else
		{
			if(f.voId.checked == true)
			{
				i++;
			}		
		}
		if(i==0){
			alert("没有选择需要删除的选项！");
			return false;
		}
	if(confirm("是否删除？")){
		ObjectForm.action="<%=contextPath%>/res/vedio!deleteAllVedio.action";
		ObjectForm.submit();
	}
	
}	

function InportVedioGroup(ObjectForm){
var flag = "false";
var voIds = "";
for (var i=0; i<ObjectForm.elements.length; i++) {			
	var element = ObjectForm.elements[i];
	if (element.name == "voId" && element.type=='checkbox'){
		if( element.checked == true ){
			voIds = voIds + element.value+"," ;						
			flag = "true";
		}
	}
}

if ("true"==flag){
		//window.location.href="/res/vediogroup!toAddVedioGroupNew.action";
		return true;
}else{
	alert("请选择视频！");
}
return false;
}

	</script>
	</head>
	<body>
<div>
	<form name="f1" method="post" action="vediogroup!toAddVedioGroupNew.action" onsubmit="return InportVedioGroup(document.f1);">
	<table width="100%" border="0" cellspacing="0"  cellpadding="0" class="lists">
		<tr >
			<td class="td_wid_l">
			<img src="<%=contextPath%>/back/images/tab_03.gif" />
			</td>
			<td class="lists_top">
				<font class="lists_fleft">视频列表</font>
				<font class="lists_fright">
				</font>
			</td>
			<td class="td_wid_l">
			<img src="<%=contextPath%>/back/images/tab_07.gif" />
			</td>
		</tr>
		<tr>
			<td width="12" class="lists_bor">
			</td>
			<td>
				<table width="100%" border="0" cellspacing="1" cellpadding="0" class="lists_info">
					<tr class="lists_infobg">
						<td>
						   <input type="checkbox" name="c1" onclick="All(this);"/>
						   </td>
							<td>
								视频名称
							</td>
							<td>
								上传时间
							</td>
							<td>
								讲师名称
							</td>
							<td>
								视频描述
							</td>
							<td>
								视听次数
							</td>
							<td>
								是否分享
							</td>
							<td>
								收藏数量
							</td>
							<td>
								是否允许试听
							</td>
					</tr>
					<s:iterator value="page.pageResult" id="vedio">
						<tr>
							<td>
							  <input type="checkbox" name="voId" id="voId" value='<s:property value="voId"/>'/> 
							</td>
							<td>
								<s:property value="voName" />
							</td>
							<td>
								<s:property value="createTime" />
							</td>
							<td>
								<s:property value="lecture" />
							</td>
							<td>
								<s:property value="content" />
							</td>
							<td>
								<s:property value="viewNum" />
							</td>
							<td>
								<s:property value="isShare" />
							</td>
							<td>
								<s:property value="collectionNum" />
							</td>
							<td>
								<s:property value="isAudition" />
							</td>
						</tr>
					</s:iterator>
					<tr><td colspan="9"><input type="submit" value="保存到分组" /></td></tr>
			</table>
			</td>
			<td width="16" class="lists_tright lists_bor2">
			</td>
		</tr>
		<tr>
			<td>
				<img src="<%=contextPath%>/back/images/tab_18.gif" />
			</td>
			<td class="lists_bottom">
				<jsp:include page="/back/jsp/common/showPage.jsp" />
			</td>
			<td>
				<img src="<%=contextPath%>/back/images/tab_20.gif" />
			</td>
		</tr>
	</table>
	</form>
</div>
	</body>
</html>
