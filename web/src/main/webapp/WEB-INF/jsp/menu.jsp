<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html >
    <%@include file="/WEB-INF/jsp/admin/common/head.jspf" %>
    <%String employeeId=request.getParameter("employeeId"); %>
<head>
    <title>贷后管理</title>
    <style type="text/css">
        body {
            font-family: microsoft yahei;
        }
    </style>
	<script type="text/javascript">
		function setRegionToolVisableState(){
			$('#cc').layout('setRegionToolVisableState',{region:'north',visible:false});
		}
		function setRegionToolVisableState(flag){
			$('#cc').layout('setRegionToolVisableState',{region:'west',visible:flag});
		}
	</script>    
    <script language="javascript">
    
        /**
         * 打开选项卡
         * @param text  选项卡标题
         * @param url   请求打开路径
         * @param icon  选项卡图标
         */
        function openTab(text,url,icon) {
            //判断当前选项卡是否存在
            if($('#tabs').tabs('exists',text)){
                //如果存在 显示
                $("#tabs").tabs("select",text);
            }else{
                //如果不存在 则新建一个
                $("#tabs").tabs('add',{
                    title:text,
                    closable:true,      //是否允许选项卡摺叠。
                    iconCls:icon,    //显示图标
                    content:"<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src='${blog}/admin/"+url+"'></iframe>"
                    //url 远程加载所打开的url
                })
            }
        }
        
/*         $(function(){
            setHeight('120px');
        });

        function setHeight(num){
            var c=$("#cc");
            alert("mn");
            var p=c.layout('region','center');  //get the north panel
            alert("mmp");
            var oldHeight=p.panel('panel').outerHeight(); //获得north panel 的原高度
            p.panel('resize',{height:num}); //设置north panel 新高度
            var newHeight=p.panel('panel').outerHeight();
            c.layout('resize',{height:c.height()+newHeight-oldHeight});  //重新设置整个布局的高度
        } */

      </script>
</head>
<body  >

<div class="easyui-layout" id="cc" data-options="fit:false" style="width:1500px;height:750px;"> 
<!-- 顶部导航菜单 -->
<div region="north" split="true" style="height: 120px; background-color: white" >  
	<table style="padding: 1px;border:0px" width="100%">
        <tr>
            <td width="1px">
                <h3>贷后管理系统</h3>
            </td>
            <td valign="bottom" align="right" width="2px">
                <font size="2px">&nbsp;&nbsp;<strong>欢迎：</strong><%=employeeId %>></font>
                <a href="javascript:doExit()" class="easyui-linkbutton" plain="true" onclick="doExit()" data-options><img src="${ldms}/static/jquery-easyui/themes/icons/exit.jpg"><font size="2px"><strong>退出</strong></font></a>
            </td>
        </tr>
     </table>
<%-- 		<div data-options="region:'north',split:false" style="height: 100px;">
			<table>
				<tr>
					<td><font size="5px">贷后管理系统</font></td>
					<td valign="bottom" align="right"><font size="3">&nbsp;&nbsp;<strong>欢迎：</strong>admin
					</font> 
					<a href="#" class="easyui-linkbutton" plain="true" onclick="doExit()" data-options><img src="${ldms}/static/jquery-easyui/themes/icons/exit.jpg"><font size="3px">退出</font></div></a>
					</td>
				</tr>
			</table> --%>
			<div class="easyui-panel" style="padding: 15px;" align="center">
				<!--  <a href="#" class="easyui-linkbutton" data-options="plain:true" style=" font-size:20px !important"><font size="5px">首页</font></a> -->
				<a href="#" class="easyui-splitbutton"
					data-options="menu:'#mm1',iconCls:'icon-edit'"><font size="5px">贷款检查</font></a>
				<a href="#" class="easyui-splitbutton"
					data-options="menu:'#mm2',iconCls:'icon-ok'"><font size="5px">风险分类</font></a>
				<a href="#" class="easyui-menubutton"
					data-options="menu:'#mm3',iconCls:'icon-man'"><font size="5px">逾期催收</font></a>
				<a href="#" class="easyui-menubutton"
					data-options="menu:'#mm4',iconCls:'icon-value'"><font
					size="5px">价值评估</font></a> <a href="#" class="easyui-menubutton"
					data-options="menu:'#mm5',iconCls:'icon-large-chart'"><font
					size="5px">档案管理</font></a> <a href="#" class="easyui-menubutton"
					data-options="menu:'#mm6',iconCls:'icon-alert'"><font
					size="5px">监测预警</font></a> <a href="#" class="easyui-menubutton"
					data-options="menu:'#mm7',iconCls:'icon-help'"><font size="5px">收缩按钮</font></a>
			</div>
			<div id="mm1" style="width: 150px;">

				<div data-options="iconCls:'icon-undo'">
					<span>大型企业</span>
					<div>
						<div>
							<a
								href="javascript:openTab('首次检查','../web/firstCheck?cusType=1')"
								class="easyui-linkbutton" style="width: 100px">首次检查</a>
						</div>
						<div>
						<a
								href="javascript:openTab('定期检查','../web/firstCheck?cusType=1')"
								class="easyui-linkbutton" style="width: 100px">定期检查</a>
						</div>
						<div>
						<a
								href="javascript:openTab('历史检查','../web/firstCheck?cusType=1')"
								class="easyui-linkbutton" style="width: 100px">历史检查</a>
						</div>
					</div>
				</div>
				<div data-options="iconCls:'icon-undo'">
					<span>小型企业</span>
					<div>
						<div>首次检查</div>
						<div>定期检查</div>
						<div>历史检查</div>
					</div>
				</div>
				<div data-options="iconCls:'icon-undo'">
					<span>个人</span>
					<div>
						<div>首次检查</div>
						<div>定期检查</div>
						<div>历史检查</div>
					</div>
				</div>
<!-- 				<div data-options="iconCls:'icon-redo'">Redo</div>
				<div class="menu-sep"></div>
				<div>Cut</div>
				<div>Copy</div>
				<div>Paste</div>
				<div class="menu-sep"></div>
				<div>
					<span>Toolbar</span>
					<div>
						<div>Address</div>
						<div>Link</div>
						<div>Navigation Toolbar</div>
						<div>Bookmark Toolbar</div>
						<div class="menu-sep"></div>
						<div>New Toolbar...</div>
					</div>
				</div>
				<div data-options="iconCls:'icon-remove'">Delete</div>
				<div>Select All</div> -->
			</div>
			<div id="mm2" style="width: 100px;">

				<div data-options="iconCls:'icon-ok'">
					<span>大型企业</span>
					<div>
						<div>五级分类任务</div>
						<div>五级分类历史</div>
					</div>
				</div>
				<div data-options="iconCls:'icon-ok'">
					<span>小型企业</span>
					<div>
						<div>五级分类任务</div>
						<div>五级分类历史</div>
					</div>
				</div>
				<div data-options="iconCls:'icon-ok'">
					<span>个人</span>
					<div>
						<div>五级分类任务</div>
						<div>五级分类历史</div>
					</div>
				</div>
				<div data-options="iconCls:'icon-cancel'">Cancel</div>
			</div>
			<div id="mm3" style="width: 150px;">
				<div data-options="icopCls:'icon-help'">
					<span>大型企业</span>
					<div></div>
				</div>
				<div data-options="icopCls:'icon-help'">
					<span>小型企业</span>
					<div></div>
				</div>
				<div data-options="icopCls:'icon-help'">
					<span>个人</span>
					<div></div>
				</div>
				<div>Help</div>
				<div>Update</div>
				<div>
					<span>About</span>
					<div class="menu-content" style="padding: 10px; text-align: left">
						<img src="http://www.jeasyui.com/images/logo1.png"
							style="width: 150px; height: 50px">
						<p style="font-size: 14px; color: #444">Try jQuery EasyUI to
							build your modern, interactive, javascript applications.</p>
					</div>
				</div>
			</div>
			<div id="mm4" style="width: 150px;">
				<div data-options="icopCls:'icon-help'">
					<span>大型企业</span>
					<div></div>
				</div>
				<div data-options="icopCls:'icon-help'">
					<span>小型企业</span>
					<div></div>
				</div>
				<div data-options="icopCls:'icon-help'">
					<span>个人</span>
					<div></div>
				</div>
			</div>
			<div id="mm5" style="width: 150px;">
				<div data-options="icopCls:'icon-help'">
					<span>大型企业</span>
					<div></div>
				</div>
				<div data-options="icopCls:'icon-help'">
					<span>小型企业</span>
					<div></div>
				</div>
				<div data-options="icopCls:'icon-help'">
					<span>个人</span>
					<div></div>
				</div>

			</div>
			<div id="mm6" style="width: 150px;">
				<div data-options="icopCls:'icon-help'">
					<span>大型企业</span>
					<div></div>
				</div>
				<div data-options="icopCls:'icon-help'">
					<span>小型企业</span>
					<div></div>
				</div>
				<div data-options="icopCls:'icon-help'">
					<span>个人</span>
					<div></div>
				</div>

			</div>
			<div id="mm7" style="width: 150px;">
				<div data-options="icopCls:'icon-help'">
					<span>隐藏按钮</span>
					<div>
						<div>
							<a href="javascript:void(0)" class="easyui-linkbutton"
								onclick="javascript:setRegionToolVisableState(false)">左侧隐藏</a>
						</div>
					</div>
				</div>
				<div data-options="icopCls:'icon-help'">
					<span>展开按钮</span>
					<div>
						<div>
							<a href="javascript:void(0)" class="easyui-linkbutton"
								onclick="javascript:setRegionToolVisableState(true)">左侧展开</a>
						</div>
					</div>
				</div>

			</div>
		</div>

		<!-- 左侧树导航菜单 -->
<!-- <div data-options="region:'west',split:true,collapsed:true" title="导航菜单" style="width:200px;">
	<div class="easyui-accordion" >
        <div title="常用操作" data-options="selected:true,iconCls:'icon-item'" style="padding: 10px">
            <a href="javascript:openTab('写','checkTask/firstCheck.jsp')" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-writeblog'" style="width: 150px">写博客</a>
            <a href="javascript:openTab('评审核','commentReview.jsp','icon-review')" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-review'" style="width: 150px">评论审核</a>
        </div>
        <div title="系统管理" data-options="iconCls:'icon-bkgl'" style="padding:10px;">
            <a href="javascript:openTab('写博客','writeBlog.jsp','icon-writeblog')" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-writeblog'" style="width: 150px;">写博客</a>
            <a href="javascript:openTab('博客信息管理','blogManage.jsp','icon-bkgl')" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-bkgl'" style="width: 150px;">博客信息管理</a>
        </div>
        <div title="用户管理" data-options="iconCls:'icon-bklb'" style="padding:10px">
            <a href="javascript:openTab('博客类别信息管理','blogTypeManage.jsp','icon-bklb')" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-bklb'" style="width: 150px;">博客类别信息管理</a>
        </div>
        <div title="评论管理" data-options="iconCls:'icon-plgl'" style="padding:10px">
            <a href="javascript:openTab('评论审核','commentReview.jsp','icon-review')" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-review'" style="width: 150px">评论审核</a>
            <a href="javascript:openTab('评论信息管理','commentManage.jsp','icon-plgl')" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-plgl'" style="width: 150px;">评论信息管理</a>
        </div>
        <div title="信息管理" data-options="iconCls:'icon-grxx'" style="padding:10px">
            <a href="javascript:openTab('修改个人信息','modifyInfo.jsp','icon-grxxxg')" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-grxxxg'" style="width: 150px;">修改个人信息</a>
        </div>
        <div title="系统管理" data-options="iconCls:'icon-system'" style="padding:10px">
            <a href="javascript:openTab('友情链接管理','linkManage.jsp','icon-link')" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-link'" style="width: 150px">友情链接管理</a>
            <a href="#" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-modifyPassword'" style="width: 150px;">修改密码</a>
            <a href="# class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-refresh'" style="width: 150px;">刷新系统缓存</a>
            <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-exit'"
               style="width: 150px;">安全退出</a>
        </div>
    </div>  
</div> -->
<!-- center 欢迎界面 -->
<div data-options="region:'center'" split="false" style="background:#666;height:80px;width:60%;">  
	<div class="easyui-tabs" data-options="fit:true" border="true" id="tabs">
        <div title="首页" data-options="iconCls:'icon-home'">
           <div align="center" style="padding-top: 200px"><font color="red" size="60">My Zone!</font></div>
        </div>
    </div>
</div>
<!--页脚  -->
<div region="south"  style="height: 25px;padding: 5px" align="center">
    Copyright © 2018-2018 SSM贷后管理系统 版权所有
</div>
</div>
</body>
</html>