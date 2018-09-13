<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String cusType = request.getParameter("cusType");	
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<%@include file="../common/head.jspf" %>
<title>首次检查</title>
<link rel="stylesheet" type="text/css"	href="../../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../../themes/icon.css">
<link rel="stylesheet" type="text/css" href="../demo.css">
<script type="text/javascript" src="../../jquery.min.js"></script>
<script type="text/javascript" src="../../jquery.easyui.min.js"></script>

</head>
<body class="easyui-layout" id="layout" style="width:1500px;height:750px;">
	<form action="#" method="post" id = "searchForm"></form>
<!-- 	<div data-options="region:'north',border:false"
		style="height: 60px; background: #B3DFDA; padding: 10px"></div>
	<div data-options="region:'west',split:true,title:''"
		style="width: 150px; padding: 10px;"></div>
	<div
		data-options="region:'east',split:true,collapsed:true,title:'East'"
		style="width: 100px; padding: 10px;"></div>
	<div data-options="region:'south',border:false"
		style="height: 50px; background: #A9FACD; padding: 10px;"></div>
 -->
 	 <div data-options="region:'center',title:''">
				<%		
				if (cusType.equals("1")){ 
				out.print("你现在的位置：贷款检查&gt;大型企业&gt;首次检查<br/>");
				} else if(cusType.equals("2")){
					out.print("你现在的位置：贷款检查&gt;小型企业&gt;首次检查<br/>");	
				}else{
					out.print("你现在的位置：贷款检查&gt;个人&gt;首次检查<br/>");	
				}%>

		<table id="dg" title="检查客户信息展示"  fitColumns="true"
			pagination="true" url="${ldms }/pspCheck/firstCheck?cusType=<%=cusType %>&flag=1" toolbar="#tb">
			<!-- <thead>
				<tr>
					<th field="cb" checkbox="true" align="center"></th>
					<th field="cusId" width="20" align="center">客户号</th>
					<th field="cusName" width="20">客户姓名</th>
					<th field="crtDate" width="20" align="center">任务生成日期</th>
					<th field="rqrFinDate" width="20">要求完成日期</th>
					<th field="realFinDate" width="20">实际完成日期</th>
					<th field="chkState" width="20" align="center">检查状态</th>
				</tr>
			</thead> -->
		</table>
		
		<%-- <div id="tb" style="padding:3px">
			<span>客户号</span>
			<input id="cusId" style="line-height:26px;border:1px solid #ccc">
			<span>客户姓名</span>
			<input id="cusName" style="line-height:26px;border:1px solid #ccc">
			<span>客户经理号</span>
			<input id="cusMngId" style="line-height:26px;border:1px solid #ccc">
			<span>客户经理姓名</span>
			<input id="cusMngName" style="line-height:26px;border:1px solid #ccc">
			<span>流水号</span>
			<input id="pspTaskNo" style="line-height:26px;border:1px solid #ccc">
			<a href="javascript:doSearch()" class="easyui-linkbutton" plain="true" onclick="doSearch()" data-options><img src="${ldms}/static/jquery-easyui/themes/icons/search.png">查询</a>
			<a href="javascript:doAdd()" class="easyui-linkbutton" plain="true" onclick="doAdd()" data-options><img src="${ldms}/static/jquery-easyui/themes/icons/search.png">增加</a>
			<a href="javascript:reload()" class="easyui-linkbutton" plain="true" onclick="reload()" data-options><img src="${ldms}/static/jquery-easyui/themes/icons/search.png">刷新</a>
		</div> --%>
		</div> 

<script>
var url;
//省略其他代码  让url声明在第一行
 /**
  * 添加或者修改客户
  */
  function saveCusInfo() {
        $("#fm").form("submit",{
            url: url,
            onSubmit: function() {
                return $(this).form("validate");
            }, //进行验证，通过才让提交
            success: function(result) {
                var result = eval("(" + result + ")"); //将json格式的result转换成js对象
                if(result.success) {
                    $.messager.alert("系统提示", "保存成功");
                    $("cusName").val(""); //保存成功后将内容置空
                    $("cusId").val("");
                    $("cusMngName").val("");
                    $("cusMngId").val("");
                    $("crtDate").val("");
                    $("#dlg").dialog("close"); //关闭对话框
                    $("#dg").datagrid("reload"); //刷新一下
                } else {
                    $.messager.alert("系统提示", "保存失败");
                    return;
                }
            }
        });
    }

  function closeSaveWindow() {
      $("cusName").val(""); //保存成功后将内容置空
      $("cusId").val("");
      $("cusMngName").val("");
      $("cusMngId").val("");
      $("crtDate").val("");
      $("#dlg").dialog("close"); //关闭对话框
      $("#chk").dialog("close");
  }
    
    $(function () {
        //datagrid初始化
        $('#dg').datagrid({
            //请求数据的url
            url: "${ldms }/pspCheck/firstCheck?cusType=<%=cusType %>&flag=1",
            //载入提示信息
            loadMsg: 'loading...',
            //水平自动展开，如果设置此属性，则不会有水平滚动条，演示冻结列时，该参数不要设置
            fitColumns: true,
            rownumbers:true,//显示行号
            //数据多的时候不换行
            nowrap: true,
            //设置分页
            pagination: true,
            //设置每页显示的记录数，默认是10个
            pageSize: 5,
            //每页显示记录数项目
            pageList: [5, 10, 15, 20],
            //指定id为标识字段，在删除，更新的时候有用，如果配置此字段，在翻页时，换页不会影响选中的项
            idField: 'pspTaskNo',
            //上方工具条 添加 修改 删除 刷新按钮
            toolbar:[{
                iconCls: 'icon-add',    //图标
                text: '添加',            //名称
                handler: function () {  //回调函数
                	 //打开对话框并且设置标题
                    $("#dlg").dialog("open").dialog("setTitle", "添加客户信息");
                   //将url设置为添加
                   url = "${ldms}/pspCheck/addCusInfo?cusType=<%=cusType %>&chkType=01&flag=1";
                }
            },'-',{
                iconCls: 'icon-edit',
                text: '修改',
                handler: function () {
                	var selectedRows = $("#dg").datagrid('getSelections');
                    //确保被选中行只能为一行
                    if(selectedRows.length != 1) {
                        $.messager.alert("系统提示", "请选择一个要修改的客户");
                        return;
                    }
                    //获取选中行id
                    var row = selectedRows[0];
                    //打开对话框并且设置标题
                    $("#dlg").dialog("open").dialog("setTitle", "修改客户信息");
                    //将数组回显对话框中
                    $("#fm").form("load", row);//会自动识别name属性，将row中对应的数据，填充到form表单对应的name属性中
                    //在url中添加flag=0 后台就能识别是更新操作
                    url = "${ldms}/pspCheck/addCusInfo?flag=0";
                    }
            },'-',{
                iconCls: 'icon-edit',
                text: '删除',
                handler: function () {
                	 var selectedRows = $("#dg").datagrid("getSelections");
                     //判断是否有选择的行
                     if(selectedRows.length == 0) {
                         $.messager.alert("系统提示", "请选择要删除的数据");
                         return;
                     }
                     //定义选中 选中id数组
                     var idsStr = [];
                     //循环遍历将选中行的id push进入数组
                     for(var i = 0; i < selectedRows.length; i++) {
                         idsStr.push(selectedRows[i].pspTaskNo);
                     }
                     //将数组安装,连接成字符串
                     var ids = idsStr.join(","); //1,2,3,4
                     //提示是否确认删除
                     $.messager.confirm("系统提示", "<font color=red>您确定要删除选中的"+selectedRows.length+"条数据么？</font>", function(r) {
                         if(r) {
                             $.post("${ldms}/pspCheck/deleteCusInfo.do",
                                 {ids: ids}, function(result){
                                     if(result.exist) {
                                         $.messager.alert("系统提示", '该类别下有客户，不能删除!');
                                     } else if(result.success) {
                                         $.messager.alert("系统提示", "数据删除成功！");
                                         $("#dg").datagrid("reload");
                                     } else {
                                         $.messager.alert("系统提示", "数据删除失败！");
                                     }
                                 }, "json");
                         }
                     });
                }
            },'-',{
                iconCls: 'icon-reload',
                text: '刷新',
                handler: function () {
                     $("#dg").datagrid("reload");
                }
            },'-',{
            	iconCls:'icon-search',
            	text:'查询',
            	handler:function(){
            		$("#chk").dialog("open").dialog("setTitle", "查询客户信息");
            		//var chkData=$("fm1").serialize();//序列化查询表单
            		//打开对话框并且设置标题
                   // $("#dg").datagrid({url:"${ldms}/pspCheck/firstCheck?cusType=1&flag=1?"+chkData}).datagrid('load');
            	}
            }],
            //同列属性，但是这些列将会冻结在左侧,z大小不会改变，当宽度大于250时，会显示滚动条，但是冻结的列不在滚动条内
            frozenColumns:[[
                {field:'checkbox',checkbox:true},    //复选框
                /* {field:'id',title:'编号',width:100} */    //id字段
            ]],
            columns:[[
            	{field:'pspTaskNo',title:'流水号',width:300,hidden:'true'},
                {field:'cusId',title:'客户号',width:300},   //cusId 字段
                {field:'cusName',title:'客户名称',width:300},   
                {field:'cusMngName',title:'客户经理名',width:300},  
                {field:'cusMngId',title:'客户经理号',width:300},   
                {field:'crtDate',title:'任务生成日期',width:300},  
            ]],
        });
    });
</script>
<body>
<table id="dg"></table>
<div id="dlg" class="easyui-dialog" style="width:500px; height:280px; padding:10px 20px"
     closed="true" buttons="#dlg-buttons">
    <form id="fm" method="post">
        <table cellspacing="8px">
        	<tr>
        		<td>
        			<input type="text" id ="pspTaskNo"  name="pspTaskNo" class="easyui-validatebox" hidden="true">
        		</td>
        	</tr>
            <tr>
                <td>客户名:</td>
                <td>
                    <input type="text" id="cusName" name="cusName" class="easyui-validatebox" required="true">
                </td>
            </tr>
			<tr>
                <td>客户号:</td>
                <td>
                    <input type="text" id="cusId" name="cusId" class="easyui-validatebox" required="true">
                </td>   			
			</tr>
            <tr>
                <td>客户经理名:</td>
                <td>
                    <input type="text" id="cusMngName" name="cusMngName" class="easyui-validatebox" required="true">
                </td>
            </tr>
            <tr>
                <td>客户经理号:</td>
                <td>
                    <input type="text" id="cusMngId" name="cusMngId" class="easyui-validatebox" required="true">&nbsp;
                </td>
            </tr>
            <tr>
                <td>任务生成日期:</td>
                <td>
                    <input type="text" id="crtDate" name="crtDate" class="easyui-validatebox" required="true">&nbsp;
                </td>
            </tr>
        </table>
    </form>
</div>

<div id="dlg-buttons">
    <div>
        <a href="javascript:saveCusInfo()" class="easyui-linkbutton" iconCls="icon-ok" plain="true">保存</a>
        <a href="javascript:closeSaveWindow()" class="easyui-linkbutton" iconCls="icon-cancel" plain="true">关闭</a>
    </div>
</div>

<div id="chk" class="easyui-dialog"  buttons="#chk-buttons"
style="width:500px; height:280px; padding:10px 20px" closed="true"
     data-options="{iconCls:'icon-search',collapsible:true}">
    <form id="fm1" method="post">
        <table cellspacing="8px">
        	<tr>
        		<td>任务编号:</td>
        		<td>
        			<input type="text" id ="pspTaskNo"  name="pspTaskNo" class="easyui-validatebox" >
        		</td>
        	</tr>
            <tr>
                <td>客户名:</td>
                <td>
                    <input type="text" id="cusName" name="cusName" class="easyui-validatebox" >
                </td>
            </tr>
			<tr>
                <td>客户号:</td>
                <td>
                    <input type="text" id="cusId" name="cusId" class="easyui-validatebox" >
                </td>   			
			</tr>
            <tr>
                <td>客户经理名:</td>
                <td>
                    <input type="text" id="cusMngName" name="cusMngName" class="easyui-validatebox" >
                </td>
            </tr>
            <tr>
                <td>客户经理号:</td>
                <td>
                    <input type="text" id="cusMngId" name="cusMngId" class="easyui-validatebox" >&nbsp;
                </td>
            </tr>
        </table>
    </form>
</div>
<table id="dg"></table>
<div id="chk-buttons">
    <div>
        <a id="query" href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="checkInputQuery();" plain="true">查询</a>
        <a href="javascript:closeSaveWindow()" class="easyui-linkbutton" iconCls="icon-cancel" plain="true">关闭</a>
    </div>
</div>

<script type="text/javascript">
/* 查询数据条件 */

function checkInputQuery(){
	
	var pspTaskNo = fm1.pspTaskNo.value;
	var cusName = fm1.cusName.value;
    var cusId = fm1.cusId.value; 
    var cusMngName =fm1.cusMngName.value;
    var cusMngId = fm1.cusMngId.value; 
    
    $('#dg').datagrid('options').url='${ldms}/pspCheck/firstCheck?cusType=1&flag=1';

	$('#dg').datagrid("load",{pspTaskNo:pspTaskNo,cusName:cusName,cusId:cusId,
		cusMngName:cusMngName,
		cusMngId:cusMngId
	});  
	 $("#chk").dialog("close");
}
</script>
</body>

</html>