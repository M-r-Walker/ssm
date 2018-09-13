/**  
 * 很多人看layout组件某个region里面的那个收缩按钮不爽，想把它去掉或者隐藏掉。这显然不是一个复杂的问题，
 * 懂点jQuery使用的同学都很容易想到思路：根据选择器隐藏按钮对应的DOM就是了。
 * 可惜啊，事与愿违，该问题一直有另一个蛋疼的解决方式。
在region内部再加一个panel组件，layout的region不设置标题，panel的标题设置为region的
标题以代替region的标题，同时这个panel的fit属性还要设置为true，要知道fit设置为true是很耗性能的，
 * layout方法扩展  
 */  
$.extend($.fn.layout.methods, {     
    setRegionToolVisableState:function(jq,params){   
        return jq.each(function(){   
            if(params.region=="center")   
                return;   
            var panels = $.data(this, 'layout').panels;   
            var panel = panels[params.region];   
            var tool = panel.panel('header').find('>div.panel-tool');   
            tool.css({display:params.visible?'block':'none'});   
            var first = params.region.substring(0,1);      
            var others = params.region.substring(1);      
            var expand = 'expand' + first.toUpperCase() + others;     
            if(panels[expand]){   
                panels[expand].panel('header').find('>div.panel-tool').css({display:params.visible?'block':'none'});   
            }   
        });   
    }   
});  