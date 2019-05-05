package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public final class header_005fstudent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css\"> \n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("        <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <title>Header</title>\n");
      out.write("\n");
      out.write("      <style>\n");
      out.write("            .dropdown-menu{\n");
      out.write("                background-color:black;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .dropdown-menu li{\n");
      out.write("                color:white;\n");
      out.write("            }\n");
      out.write("            a{\n");
      out.write("                color:white;\n");
      out.write("            }\n");
      out.write("            a:hover{\n");
      out.write("                color:black;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            function changepassword() {\n");
      out.write("                window.open('changepassword_student.jsp', 'popUpWindow', 'height=500,width=600,left=650,top=250,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no, status=yes');\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");


            int ct = 0;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                Statement st = con.createStatement();
                String x1 = "Select count(*) from queries where seen='0' and designation ='student'";

                ResultSet rs = st.executeQuery(x1);
                while (rs.next()) {
                    ct = rs.getInt(1);
                }

            } catch (Exception ex) {
                out.print(ex);
            }
        
      out.write("\n");
      out.write("\n");
      out.write("        <section> \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <h1 style=\"float:left;padding-left:20px;\">Placement Cell</h1>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <section>\n");
      out.write("            <nav class=\"navbar navbar-dark bg-primary \">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"navbar-header\">\n");
      out.write("                        <button type=\"button\" class=\"navbar-toggle \" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>                        \n");
      out.write("                        </button>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("                        <ul class=\"nav navbar-nav\">\n");
      out.write("                            <li class=\"active\"><a href=\"home_student.jsp\">HOME</a></li>\n");
      out.write("                            <li class=\"dropdown\">\n");
      out.write("                                <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"placement_student.jsp\">COMPANIES INFORMATION<span class=\"caret\"></span></a>\n");
      out.write("                                <ul class=\"dropdown-menu\">\n");
      out.write("                                    <li><a href=\"placement_student.jsp\">UPCOMING COMPANIES</a></li>\n");
      out.write("                                    <li><a href=\"apply_job.jsp\">APPLY FOR JOB</a></li>\n");
      out.write("                                    <li><a href=\"student_result.jsp\">COMPANIES RESULT</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"apply_job1.jsp\">APPLY FOR JOB</a></li>\n");
      out.write("                            <li><a href=\"profile_student.jsp\">PROFILE</a></li>\n");
      out.write("                            <li><a href=\"contactf_stud.jsp\">CONTACT FORM</a></li>\n");
      out.write("                            <li><a href=\"view_upload_paper_student.jsp\">PREVIOUS YEAR PAPERS</a></li>\n");
      out.write("                            <li><a href=\"your_inbox_student.jsp\">MESSAGES ");
if (ct > 0) {
      out.write(" <span class=\"badge badge-light\">");
      out.print(ct);
}
      out.write("</span></a></li>\n");
      out.write("                            <li><a onclick=\"changepassword()\">CHANGE PASSWORD</a></li>\n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("                        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                            <li><a href=\"logout\"><span class=\"glyphicon glyphicon-log-out\"></span> LOGOUT</a></li>\n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
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
