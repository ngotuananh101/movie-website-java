package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("        <title>Netflix Fake Login</title>\n");
      out.write("        <!-- Favicon -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"web/images/favicon.ico\"/>\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"web/css/bootstrap.min.css\"/>\n");
      out.write("        <!-- Typography CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"web/css/typography.css\">\n");
      out.write("        <!-- Style -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"web/css/style.css\"/>\n");
      out.write("        <!-- Responsive -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"web/css/responsive.css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <!-- loader Start -->\n");
      out.write("        <!-- <div id=\"loading\">\n");
      out.write("           <div id=\"loading-center\">\n");
      out.write("           </div>\n");
      out.write("        </div> -->\n");
      out.write("        <!-- loader END -->\n");
      out.write("        <!-- MainContent -->\n");
      out.write("        <section class=\"sign-in-page\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row justify-content-center align-items-center height-self-center\">\n");
      out.write("                    <div class=\"col-lg-5 col-md-12 align-self-center\">\n");
      out.write("                        <div class=\"sign-user_card \">                    \n");
      out.write("                            <div class=\"sign-in-page-data\">\n");
      out.write("                                <div class=\"sign-in-from w-100 m-auto\">\n");
      out.write("                                    <h3 class=\"mb-3 text-center\">Sign in</h3>\n");
      out.write("                                    <form class=\"mt-4\" action=\"login\" method=\"POST\">\n");
      out.write("                                        <div class=\"form-group\">                                 \n");
      out.write("                                            <input type=\"text\" class=\"form-control mb-0\" id=\"loginEmail\" placeholder=\"Enter email or username\" autocomplete=\"off\" name=\"username\" required>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">                                 \n");
      out.write("                                            <input type=\"password\" class=\"form-control mb-0\" id=\"loginPassword\" placeholder=\"Password\" name=\"password\" required>\n");
      out.write("                                        </div>\n");
      out.write("                                        <p style=\"color: red\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.error}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("  </p>\n");
      out.write("                                        <div class=\"sign-info\">\n");
      out.write("                                            <button type=\"submit\" class=\"btn btn-hover\">Sign in</button>\n");
      out.write("                                            <div class=\"custom-control custom-checkbox d-inline-block\">\n");
      out.write("                                                <input type=\"checkbox\" class=\"custom-control-input\" id=\"customCheck\">\n");
      out.write("                                                <label class=\"custom-control-label\" for=\"customCheck\">Remember Me</label>\n");
      out.write("                                            </div>                                \n");
      out.write("                                        </div>                                    \n");
      out.write("\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"mt-3\">\n");
      out.write("                                <div class=\"d-flex justify-content-center links\">\n");
      out.write("                                    Don't have an account? <a href=\"register\" class=\"text-primary ml-2\">Sign Up</a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"d-flex justify-content-center links\">\n");
      out.write("                                    <a href=\"reset-password.html\" class=\"f-link\">Forgot your password?</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- MainContent End-->\n");
      out.write("\n");
      out.write("        <!-- back-to-top End -->\n");
      out.write("        <!-- jQuery, Popper JS -->\n");
      out.write("        <script src=\"web/js/jquery-3.4.1.min.js\"></script>\n");
      out.write("        <script src=\"web/js/popper.min.js\"></script>\n");
      out.write("        <!-- Bootstrap JS -->\n");
      out.write("        <script src=\"web/js/bootstrap.min.js\"></script>\n");
      out.write("        <!-- Slick JS -->\n");
      out.write("        <script src=\"web/js/slick.min.js\"></script>\n");
      out.write("        <!-- owl carousel Js -->\n");
      out.write("        <script src=\"web/js/owl.carousel.min.js\"></script>\n");
      out.write("        <!-- select2 Js -->\n");
      out.write("        <script src=\"web/js/select2.min.js\"></script>\n");
      out.write("        <!-- Magnific Popup-->\n");
      out.write("        <script src=\"web/js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("        <!-- Slick Animation-->\n");
      out.write("        <script src=\"web/js/slick-animation.min.js\"></script>\n");
      out.write("        <!-- Custom JS-->\n");
      out.write("        <script src=\"web/js/custom.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
