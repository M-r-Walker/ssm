<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>resize region size - jQuery EasyUI Demo</title>
<%@include file="admin/common/head.jspf" %>	<script type="text/javascript">
		function setRegionToolVisableState(){
			$('#layout').layout('setRegionToolVisableState',{region:'north',visible:false});
		}
		function setRegionToolVisableState(flag){
			$('#layout').layout('setRegionToolVisableState',{region:'west',visible:flag});
		}
		function setRegionToolVisableState1(){
			$('#layout').layout('setRegionToolVisableState',{region:'east',visible:false});
		}		
	</script>
</head>
<body>
<!-- 	<h2>设置region收缩按钮是否可见</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip"></div>
		<div>设置region收缩按钮是否可见的小扩展.</div>
	</div> -->
	<!-- <div style="margin:10px 0;"></div> -->
	<div class="easyui-layout" id="layout" style="width:700px;height:350px;">
		<div data-options="region:'north',split:true,title:'north'" style="height:100px">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="javascript:setRegionToolVisableState(false)">隐藏West的收缩按钮</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="javascript:setRegionToolVisableState(true)">显示West的收缩按钮</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="javascript:setRegionToolVisableState1(false)">隐藏east的收缩按钮</a>
		</div>
		<!-- <div data-options="region:'south',split:true" style="height:50px;"></div> -->
		<!-- <div data-options="region:'east',split:true" title="East" style="width:180px;"></div> -->
		
		<div data-options="region:'west',split:true,collapsed:true" title="West" style="width:100px;"></div>
<!-- 		<div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">
			<table class="easyui-datagrid"
					data-options="url:'../layout/datagrid_data1.json',border:false,singleSelect:true,fit:true,fitColumns:true">
				<thead>
					<tr>
						<th data-options="field:'itemid'" width="80">Item ID</th>
						<th data-options="field:'productid'" width="100">Product ID</th>
						<th data-options="field:'listprice',align:'right'" width="80">List Price</th>
						<th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
						<th data-options="field:'attr'" width="150">Attribute</th>
						<th data-options="field:'status',align:'center'" width="50">Status</th>
					</tr>
				</thead>
			</table>
		</div>  -->
	</div>
</body>
</html>