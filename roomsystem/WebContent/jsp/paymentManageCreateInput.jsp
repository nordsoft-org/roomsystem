<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.feifan.common.CommonUtility"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />
	<title>公寓管理系统--租金管理--新增输入画面</title>
	<link rel="stylesheet" type="text/css" href="styles/styles.css">
	<script type="text/javascript" src="javascript/javascript.js"></script>
	<script type="text/javascript" src="javascript/calendar.js"></script>
</head>
<body>
	<div id="globaldiv">
		<%@include file="header.inc"%>
		<div id="messagediv">
			<br>
			<div id="pagehint">
				租金管理--新增输入画面
			</div>
			<hr>
			<div id="operatehint">
				请完善各项数据！
			</div>
			<font color="red"><html:errors /> </font>
			<br>
		</div>
		<div id="bodydiv">
			<html:form action="/paymentManageCreateInputConfirm">
				<div id="selectinputdiv">
					<table>
						<tr>
							<th>
								身份证号
							</th>
							<td>
								<span><html:text styleClass="textboxbeforebutton" size="40" readonly="true" name="paymentManageForm" property="person_num" maxlength="18"></html:text> <html:button styleClass="buttonaftertextbox" property="refer" value="参照住宿管理"
										onclick="formSubmit('../paymentManageCreateInputRefer.do')"></html:button></span>
								<html:hidden name="paymentManageForm" property="live_id" />
							</td>
							<th>
								姓名
							</th>
							<td>
								<span><html:text styleClass="textbox" size="40" readonly="true" name="paymentManageForm" property="name" maxlength="4"></html:text></span>
							</td>
						</tr>
						<tr>
							<th>
								楼号楼层
							</th>
							<td>
								<span><html:text styleClass="textbox" size="40" readonly="true" name="paymentManageForm" property="building_floor" maxlength="8"></html:text></span>
							</td>
							<th>
								房间号码
							</th>
							<td>
								<span><html:text styleClass="textbox" size="40" readonly="true" name="paymentManageForm" property="house_num" maxlength="4"></html:text></span>
							</td>
						</tr>
						<tr>
							<th>
								交租日期
							</th>
							<td>
								<logic:equal name="DoNotSetDefaultDate" value="DoNotSetDefaultDate">
									<span><html:text styleClass="textbox" size="40" name="paymentManageForm" property="pay_date" maxlength="10" onfocus="calendar()" readonly="true"></html:text></span>
								</logic:equal>
								<logic:notEqual name="DoNotSetDefaultDate" value="DoNotSetDefaultDate">
									<span><html:text styleClass="textbox" size="40" name="paymentManageForm" property="pay_date" maxlength="10" value="<%= CommonUtility.getSysDate(2) %>" onfocus="calendar()" readonly="true"></html:text></span>
								</logic:notEqual>
							</td>
							<th>
								租金
							</th>
							<td>
								<span><html:text styleId="0" styleClass="textbox" size="40" name="paymentManageForm" property="room_rent" maxlength="8" onkeyup="total_calculate();"></html:text></span>
							</td>
						</tr>
						<tr>
							<th>
								水费
							</th>
							<td>
								<span><html:text styleId="1" styleClass="textbox" size="40" name="paymentManageForm" property="water_charge" maxlength="4" onkeyup="total_calculate();"></html:text></span>
							</td>
							<th>
								电费
							</th>
							<td>
								<span><html:text styleId="2" styleClass="textbox" size="40" name="paymentManageForm" property="power_charge" maxlength="8" onkeyup="total_calculate();"></html:text></span>
							</td>
						</tr>
						<tr>
							<th>
								网费
							</th>
							<td>
								<span><html:text styleId="3" styleClass="textbox" size="40" name="paymentManageForm" property="cable_charge" maxlength="8" onkeyup="total_calculate();"></html:text></span>
							</td>
							<th>
								杂费
							</th>
							<td>
								<span><html:text styleId="4" styleClass="textbox" size="40" name="paymentManageForm" property="extra_charge" maxlength="8" onkeyup="total_calculate();"></html:text></span>
							</td>
						</tr>
						<tr>
							<th>
								暖费
							</th>
							<td>
								<span><html:text styleId="5" styleClass="textbox" size="40" name="paymentManageForm" property="heating_charge" maxlength="8" onkeyup="total_calculate();"></html:text></span>
							</td>
							<th>
								合计
							</th>
							<td>
								<span><html:text styleId="6" styleClass="textbox" size="40" readonly="true" name="paymentManageForm" property="total_charge" maxlength="10"></html:text></span>
								<html:hidden name="paymentManageForm" property="total_charge" />
							</td>
						</tr>
						<tr>
							<th>
								房间押金
							</th>
							<td>
								<span><html:text styleClass="textbox" size="40" name="paymentManageForm" property="room_deposit" maxlength="8"></html:text></span>
							</td>
							<th>
								开始日期
							</th>
							<td>
								<logic:equal name="DoNotSetDefaultDate" value="DoNotSetDefaultDate">
									<span><html:text styleClass="textbox" size="40" name="paymentManageForm" property="start_date" maxlength="10" onfocus="calendar()" readonly="true"></html:text></span>
								</logic:equal>
								<logic:notEqual name="DoNotSetDefaultDate" value="DoNotSetDefaultDate">
									<span><html:text styleClass="textbox" size="40" name="paymentManageForm" property="start_date" maxlength="10" value="<%= CommonUtility.getSysDate(2) %>" onfocus="calendar()" readonly="true"></html:text></span>
								</logic:notEqual>
							</td>
						</tr>
						<tr>
							<th>
								结束日期
							</th>
							<td>
								<span><html:text styleClass="textbox" size="40" name="paymentManageForm" property="end_date" maxlength="10" onfocus="calendar()" readonly="true"></html:text></span>
							</td>
							<th>
								<font color="green">备注</font>
							</th>
							<td>
								<span><html:text styleClass="textbox" size="40" name="paymentManageForm" property="comment" maxlength="128"></html:text></span>
							</td>
						</tr>
					</table>
				</div>
				<br />
				<html:submit property="select" value="确认" styleClass="button"></html:submit> &nbsp; &nbsp; &nbsp;
				<html:button property="back" value="返回" styleClass="button" onclick="pageLoad('paymentManageSelectInput.jsp')"></html:button>
			</html:form>
		</div>
		<%@include file="footer.inc"%>
	</div>
</body>
</html:html>