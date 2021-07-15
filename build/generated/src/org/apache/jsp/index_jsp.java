package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "common/header.jsp", out, false);
      out.write("\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("        <title>Netflix by Tuan Anh</title>\n");
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
      out.write("        <!-- Fontawesome -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.15.3/css/all.css\" integrity=\"sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk\" crossorigin=\"anonymous\">\n");
      out.write("        <style>\n");
      out.write("            #inputEmail{\n");
      out.write("                color: black;\n");
      out.write("                background-color: white;\n");
      out.write("            }\n");
      out.write("            #btnLogin{\n");
      out.write("                height: 75px;\n");
      out.write("                font-size: 30px;\n");
      out.write("            }\n");
      out.write("            input:focus ~ .floating-label,\n");
      out.write("            input:not(:focus):valid ~ .floating-label{\n");
      out.write("                top: 8px;\n");
      out.write("                bottom: 10px;\n");
      out.write("                left: 20px;\n");
      out.write("                font-size: 12px;\n");
      out.write("                opacity: 1;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .inputText {\n");
      out.write("                font-size: 20px;\n");
      out.write("                height: 75px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .floating-label {\n");
      out.write("                position: absolute;\n");
      out.write("                pointer-events: none;\n");
      out.write("                left: 20px;\n");
      out.write("                top: 20px;\n");
      out.write("                transition: 0.2s ease all;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <!-- loader Start -->\n");
      out.write("        <!-- <div id=\"loading\">\n");
      out.write("           <div id=\"loading-center\">\n");
      out.write("           </div>\n");
      out.write("        </div> -->\n");
      out.write("        <!-- loader END -->\n");
      out.write("\n");
      out.write("        <!-- Header -->\n");
      out.write("        <header id=\"main-header\">\n");
      out.write("            <div class=\"main-header\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-12\">\n");
      out.write("                            <nav class=\"navbar navbar-expand-lg navbar-light p-0\">\n");
      out.write("                                <a href=\"#\" class=\"navbar-toggler c-toggler\" data-toggle=\"collapse\"\n");
      out.write("                                   data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\"\n");
      out.write("                                   aria-label=\"Toggle navigation\">\n");
      out.write("                                    <div class=\"navbar-toggler-icon\" data-toggle=\"collapse\">\n");
      out.write("                                        <span class=\"navbar-menu-icon navbar-menu-icon--top\"></span>\n");
      out.write("                                        <span class=\"navbar-menu-icon navbar-menu-icon--middle\"></span>\n");
      out.write("                                        <span class=\"navbar-menu-icon navbar-menu-icon--bottom\"></span>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                                <a class=\"navbar-brand\" href=\"index.html\"> <img class=\"img-fluid logo\" src=\"web/images/logo.png\"\n");
      out.write("                                                                                alt=\"streamit\" /> </a>\n");
      out.write("                                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"mobile-more-menu\">\n");
      out.write("                                    <button type=\"submit\" class=\"btn btn-hover\">Sign in</button>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"navbar-right menu-right\">\n");
      out.write("                                    <ul class=\"d-flex align-items-center list-inline m-0\">\n");
      out.write("                                        <li class=\"nav-item nav-icon\">\n");
      out.write("                                            <a href=\"login\"><button class=\"btn btn-hover\">Sign in</button></a> \n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </nav>\n");
      out.write("                            <div class=\"nav-overlay\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <!-- Header End -->\n");
      out.write("\n");
      out.write("        <!-- MainContent -->\n");
      out.write("        <section class=\"sign-in-page\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row justify-content-center align-items-center height-self-center\">\n");
      out.write("                    <div class=\"col-lg-8 col-md-12 align-self-center\">\n");
      out.write("                        <h1 style=\"text-align: center;font-size: 64px;\">Chương trình truyền hình, phim không giới hạn và nhiều nội dung khác.</h1><br/>\n");
      out.write("                        <h3 style=\"text-align: center;\">Xem ở mọi nơi. Hủy bất kỳ lúc nào.</h3><br/>\n");
      out.write("                        <form class=\"row\" action=\"login\" method=\"GET\">\n");
      out.write("                            <div class=\"col-12 mb-3\">\n");
      out.write("                                <h5 style=\"text-align: center;\">Bạn đã sẵn sàng xem chưa? Nhập email để tạo hoặc kích hoạt lại tư cách thành viên của bạn.</h5>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-12 col-sm pr-sm-0\">\n");
      out.write("                                <input type=\"text\" name=\"email\" id=\"inputEmail\" class=\"form-control input-lg inputText\" autocomplete=\"email\" required>\n");
      out.write("                                <span class=\"floating-label\">Your email address</span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-12 col-sm-auto pl-sm-0\">\n");
      out.write("                                <a href=\"login\"><button type=\"submit\" class=\"btn btn-hover\" id=\"btnLogin\">Sign in <i class=\"fas fa-chevron-right\"></i></button></a>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
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
