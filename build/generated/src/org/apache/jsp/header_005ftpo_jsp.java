package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Connection;

public final class header_005ftpo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("       <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>\n");
      out.write("        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>\n");
      out.write("        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>\n");
      out.write("        <title>HEADER TPO</title>\n");
      out.write("        <style>\n");
      out.write("           \n");
      out.write("           #navbar-links{\n");
      out.write("               color: white;\n");
      out.write("           }\n");
      out.write("           #navbar-links:hover{\n");
      out.write("               color:black;\n");
      out.write("           }\n");
      out.write("        </style>\n");
      out.write("       \n");
      out.write("        <script>\n");
      out.write("                function changepassword(){  \n");
      out.write("                    window.open('changepassword_tpo.jsp','popUpWindow','height=500,width=600,left=650,top=250,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no, status=yes');\n");
      out.write("                }\n");
      out.write("                 function addnotice(){  \n");
      out.write("                    window.open('notice1.jsp','popUpWindow','height=450,width=750,left=650,top=250,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no, status=yes');\n");
      out.write("                }\n");
      out.write("               \n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <section> \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <h1 style=\"float:left;padding-left:20px;\">Placement Cell</h1>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        \n");
      out.write("        <section>\n");
      out.write("            <nav class=\"navbar navbar-dark bg-primary\">\n");
      out.write("              <div class=\"container-fluid\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                  <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>                        \n");
      out.write("                  </button>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("                  <ul class=\"nav navbar-nav\">\n");
      out.write("                    <li class=\"active\"><a href=\"home_tpo.jsp\" id=\"navbar-links\">HOME</a></li>\n");
      out.write("                    <li><a href=\"profile_tpo.jsp\" id=\"navbar-links\">PROFILE</a></li>\n");
      out.write("                    <li class=\"dropdown\">\n");
      out.write("                      <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\" id=\"navbar-links\">COMPANIES INFORMATION<span class=\"caret\"></span></a>\n");
      out.write("                      <ul class=\"dropdown-menu\">\n");
      out.write("                        <li><a href=\"placement_tpo.jsp\" >NEW COMPANY REQUEST</a></li>\n");
      out.write("                        <li><a href=\"approved_table.jsp\" >APPROVED COMPANIES</a></li>\n");
      out.write("                        <li><a href=\"declined_table.jsp\" >DECLINED COMPNIES</a></li>\n");
      out.write("                        <li><a href=\"company_responsetable.jsp\" >ACCEPTED COMPANY REQUIREMENTS</a></li>\n");
      out.write("                      </ul>\n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                    <li class=\"dropdown\">\n");
      out.write("                      <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\" id=\"navbar-links\">STUDENTS INFORMATION<span class=\"caret\"></span></a>\n");
      out.write("                      <ul class=\"dropdown-menu\">\n");
      out.write("                       \n");
      out.write("                        <li><a href=\"participation_tpo.jsp\" >INTERESTED STUDENTS IN COMPANY</a></li>\n");
      out.write("                        <li><a href=\"tpo_placed_student.jsp\">PLACED STUDENTS</a></li>\n");
      out.write("                        <li><a href=\"tpo_unplaced_student.jsp\">UNPLACED STUDENTS</a></li>\n");
      out.write("                      </ul>\n");
      out.write("                    </li>\n");
      out.write("\n");
      out.write("                    <li><a href=\"Your_Queries.jsp\" id=\"navbar-links\">Messages</span></a></li>\n");
      out.write("                                   \n");
      out.write("                    <li><a href=\"offcampus_student.jsp\" id=\"navbar-links\">OFFCAMPUS STUDENT</a></li>\n");
      out.write("                 \n");
      out.write("                    <li class=\"dropdown\">\n");
      out.write("                      <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\" id=\"navbar-links\">NOTICE SECTION<span class=\"caret\"></span></a>\n");
      out.write("                      <ul class=\"dropdown-menu\">\n");
      out.write("                        <li><a onclick=\"addnotice()\">STUDENT NOTICE</a></li>\n");
      out.write("                         <li><a href=\"remove_notice.jsp\">REMOVE STUDENT NOTICE</a></li>\n");
      out.write("                      </ul>\n");
      out.write("                    </li>\n");
      out.write("                      \n");
      out.write("                    <li><a href=\"paper_upload_tpo.jsp\" id=\"navbar-links\">UPLOAD PAPER</a></li> \n");
      out.write("                    <li><a onclick=\"changepassword()\" id=\"navbar-links\">CHANGE PASSWORD</a></li>\n");
      out.write("                  </ul>\n");
      out.write("                  <ul class=\"nav navbar-nav navbar-right\" >\n");
      out.write("                    <li><a href=\"logout\" id=\"navbar-links\"><span class=\"glyphicon glyphicon-log-out\"></span> LOGOUT</a></li>\n");
      out.write("                  </ul>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </nav>\n");
      out.write("        </section>\n");
      out.write("\n");
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
