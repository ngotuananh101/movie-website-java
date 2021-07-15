package org.apache.jsp.common;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class jwplayer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--Get parameter-->\n");

    String link = null;
    try {
        link = request.getParameter("link");
    } catch (Exception e) {
        link = "https://archive.org/download/default_202106/default.mp4";
    }
    pageContext.setAttribute("videolink", link);

      out.write("\n");
      out.write("<!--Load jwplayer js file-->\n");
      out.write("<script src=\"https://cdn.jwplayer.com/libraries/ELCQaZr3.js\" ></script>\n");
      out.write("<!--Set jwplayer api key (license key)-->\n");
      out.write("<script>jwplayer.key = \"koTyB3KqGz4w0Q/z/csQdkf9G21G7tQ07YG/fk9sy6g=\";</script>\n");
      out.write("\n");
      out.write("<!--Hiển thi player qua thẻ div-->\n");
      out.write("<div id=\"myPlayer\"></div>\n");
      out.write("\n");
      out.write("<!--Setup player detail-->\n");
      out.write("<script type=\"text/JavaScript\">\n");
      out.write("    jwplayer(\"myPlayer\").setup({ \n");
      out.write("    \"playlist\": [{\n");
      out.write("    // get file using 'link' parameter\n");
      out.write("    \"file\":\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${videolink}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("    }],\n");
      out.write("    });\n");
      out.write("</script>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
