<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
        <script language="javascript">
           function orderDel(orderId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/orderDelByAd.action?orderId="+orderId;
               }
           }
           
           function orderQx(orderId)
           {
               if(confirm('您确定取消吗？'))
               {
                   window.location.href="<%=path %>/orderDelByQx.action?orderId="+orderId;
               }
           }
           
           function orderWc(orderId)
           {
               if(confirm('您确定完成吗？'))
               {
                   window.location.href="<%=path %>/orderDelByWc.action?orderId="+orderId;
               }
           }
           
           function orderShouli(orderId)
           {
               if(confirm('您确定受理订单吗？'))
               {
                   window.location.href="<%=path %>/orderShouli.action?orderId="+orderId;
               }
           }
           
           
           function orderDetail(orderId)
           {
                 var url="<%=path %>/orderDetail.action?orderId="+orderId;
                 var n="";
                 var w="700px";
                 var h="700px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
			     openWin(url,n,w,h,s);
           }
           
           function userXinxi(userId)
           {
                 var url="<%=path %>/userXinxi.action?userId="+userId;
                 var n="";
                 var w="300px";
                 var h="400px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
			     openWin(url,n,w,h,s);
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					
					<form action="orderMana.action" method="post">
					<td height="14" colspan="9" background="<%=path %>/images/tbg.gif">&nbsp;订单管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					订单状态：
					<select id="orderZhuangtai" name="orderZhuangtai" style="width:150px;">
						<option value="">全部</option>
						<option value="no">已下单</option>
						<option value="yes">已发货</option>
						<option value="qx">已取消</option>
						<option value="wc">已完成</option>
						<option value="th">已退货</option>
					</select>&nbsp;&nbsp;<input type="submit" value="搜索" />
					</form>
				<script>
					document.getElementById("orderZhuangtai").value="<%=request.getAttribute("orderZhuangtai")%>";
       </script>
					</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="6%">用户信息</td>
					<td width="8%">订单编号</td>
					<td width="4%">金额</td>
					<td width="13%">下单日期</td>
					<td width="10%">预送达时间</td>
				    <td width="10%">订单状态</td>
					<td width="18%">送货地址</td>
					<td width="8%">付款方式</td>
					<td width="22%">操作</td>
		        </tr>	
				<s:iterator value="#request.orderList" id="order">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="userXinxi(<s:property value="#order.orderUserId"/>)" style="color: red">用户信息</a>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#order.orderBianhao"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   ￥<s:property value="#order.orderJine"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   <s:property value="#order.orderDate"/>
					</td>
					<td bgcolor="#FFFFFF" align="center" ><s:property value="#order.expectDate"/></td>
					<td bgcolor="#FFFFFF" align="center">
						<s:if test="#order.orderZhuangtai=='no'">
							 已下单
						</s:if>
						<s:if test="#order.orderZhuangtai=='yes'">
							已发货
						</s:if>
						<s:if test="#order.orderZhuangtai=='th'">
							已退货
						</s:if>
						<s:if test="#order.orderZhuangtai=='qx'">
							已取消
						</s:if>
						<s:if test="#order.orderZhuangtai=='wc'">
							已完成
						</s:if>
	                </td>
					<td bgcolor="#FFFFFF" align="center">
					   <s:property value="#order.odderSonghuodizhi"/>
					<br /></td>
					<td bgcolor="#FFFFFF" align="center">
					   <s:property value="#order.odderFukuangfangshi"/>
					<br /></td>
					<td bgcolor="#FFFFFF" align="center">
					        <a href="#" onclick="orderDetail(<s:property value="#order.orderId"/>)" class="pn-loperator">订单明细</a>
						    <s:if test="#order.orderZhuangtai=='no'">
							    <a href="#" onclick="orderShouli(<s:property value="#order.orderId"/>)" class="pn-loperator">受理订单</a>
						    </s:if>
						    <s:if test="#order.orderZhuangtai=='yes'">
						         已受理
						    </s:if>
						    <a href="#" onclick="orderQx(<s:property value="#order.orderId"/>)" class="pn-loperator">取消</a>
						    <a href="#" onclick="orderWc(<s:property value="#order.orderId"/>)" class="pn-loperator">完成</a>
							<a href="#" onclick="orderDel(<s:property value="#order.orderId"/>)" class="pn-loperator">删除订单</a>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>
