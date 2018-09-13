package com.lc.ldms.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
/*import java.io.PrintWriter;
如何将json返回
>第一步获取response对象
在SpringMVC中我们可以直接在方法形参中添加HttpServletResponse response即可
>第二步拿到response的文本输出流对象 既
PrintWriter pw = response.getWriter();
>第三步将我们需要返回的json对象写入response中
pw.println(obj.toString());
>第四部关闭刷新输出流并且关闭
pw.flush();
 pw.close();
因为我们可能在其他的方法也需要返回json对象 所以我们将这个流程封装成一个静态方法放在工具类中
*/
/**
 * Created by xp on 2018/03/118.
 */
public class ResponseUtil {
    /**
     * 向response对象写入数据
     * @param response
     * @param obj
     * @throws Exception
     */
    public static void write(HttpServletResponse response, Object obj)throws Exception{
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println(obj.toString());
        out.flush();
        out.close();
    }
}
