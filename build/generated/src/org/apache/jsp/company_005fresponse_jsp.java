package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;;
import java.text.SimpleDateFormat;;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class company_005fresponse_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

String comp_email = "";
String comp_id = "", comp_status = "", comp_message = "", comp_date = "";
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <title>COMPANY RESPONSE</title>\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                margin:0;\n");
      out.write("                padding:0;\n");
      out.write("                font-family:sans-serif;\n");
      out.write("                ");
      out.write("\n");
      out.write("                background-size:cover;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            function valiDate() {\n");
      out.write("                var date = new Date(document.getElementById(\"mydate\").value);\n");
      out.write("                var today = new Date();\n");
      out.write("\n");
      out.write("\n");
      out.write("                var dates = {\n");
      out.write("                    convert: function (d) {\n");
      out.write("                        // Converts the date in d to a date-object. The input can be:\n");
      out.write("                        //   a date object: returned without modification\n");
      out.write("                        //  an array      : Interpreted as [year,month,day]. NOTE: month is 0-11.\n");
      out.write("                        //   a number     : Interpreted as number of milliseconds\n");
      out.write("                        //                  since 1 Jan 1970 (a timestamp) \n");
      out.write("                        //   a string     : Any format supported by the javascript engine, like\n");
      out.write("                        //                  \"YYYY/MM/DD\", \"MM/DD/YYYY\", \"Jan 31 2009\" etc.\n");
      out.write("                        //  an object     : Interpreted as an object with year, month and date\n");
      out.write("                        //                  attributes.  **NOTE** month is 0-11.\n");
      out.write("                        return (\n");
      out.write("                                d.constructor === Date ? d :\n");
      out.write("                                d.constructor === Array ? new Date(d[0], d[1], d[2]) :\n");
      out.write("                                d.constructor === Number ? new Date(d) :\n");
      out.write("                                d.constructor === String ? new Date(d) :\n");
      out.write("                                typeof d === \"object\" ? new Date(d.year, d.month, d.date) :\n");
      out.write("                                NaN\n");
      out.write("                                );\n");
      out.write("                    },\n");
      out.write("                    compare: function (a, b) {\n");
      out.write("                        // Compare two dates (could be of any type supported by the convert\n");
      out.write("                        // function above) and returns:\n");
      out.write("                        //  -1 : if a < b\n");
      out.write("                        //   0 : if a = b\n");
      out.write("                        //   1 : if a > b\n");
      out.write("                        // NaN : if a or b is an illegal date\n");
      out.write("                        // NOTE: The code inside isFinite does an assignment (=).\n");
      out.write("                        return (\n");
      out.write("                                isFinite(a = this.convert(a).valueOf()) &&\n");
      out.write("                                isFinite(b = this.convert(b).valueOf()) ?\n");
      out.write("                                (a > b) - (a < b) :\n");
      out.write("                                NaN\n");
      out.write("                                );\n");
      out.write("                    },\n");
      out.write("                    inRange: function (d, start, end) {\n");
      out.write("                        // Checks if date in d is between dates in start and end.\n");
      out.write("                        // Returns a boolean or NaN:\n");
      out.write("                        //    true  : if d is between start and end (inclusive)\n");
      out.write("                        //    false : if d is before start or after end\n");
      out.write("                        //    NaN   : if one or more of the dates is illegal.\n");
      out.write("                        // NOTE: The code inside isFinite does an assignment (=).\n");
      out.write("                        return (\n");
      out.write("                                isFinite(d = this.convert(d).valueOf()) &&\n");
      out.write("                                isFinite(start = this.convert(start).valueOf()) &&\n");
      out.write("                                isFinite(end = this.convert(end).valueOf()) ?\n");
      out.write("                                start <= d && d <= end :\n");
      out.write("                                NaN\n");
      out.write("                                );\n");
      out.write("                    }\n");
      out.write("                };\n");
      out.write("\n");
      out.write("                if (dates.compare(date, today) !== 1) {\n");
      out.write("                    alert(\"Invalid Date!\");\n");
      out.write("                    return false;\n");
      out.write("                } else\n");
      out.write("                    return true;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            HttpSession hs = request.getSession();
            comp_email = hs.getAttribute("company_email").toString();

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
            Statement stmt = conn.createStatement();
            String x = "select * from companysignup where companyemail='" + comp_email + "'";
            ResultSet rs = stmt.executeQuery(x);
            while (rs.next()) {
                comp_status = rs.getString("status");
                comp_id = rs.getString("companyid");
            }

            if (comp_status.equals("reject")) {

                String z = "select * from message where companyid='" + comp_id + "'";
                rs = stmt.executeQuery(z);
                while (rs.next()) {
                    comp_message = rs.getString("message");

                }
                out.print(comp_message);
            } else if (comp_status.equals("waiting")) {
        
      out.write("\n");
      out.write("        <div><h2>TPO DO NOT GIVE RESPONSE TO YOUR REQUEST YET</h2></div>\n");
      out.write("        <div><h1>PLEASE WAIT</h1></div>\n");
      out.write("        ");
 } else if (comp_status.equals("accept")) {
            String y = "select * from approved_comp where companyid='" + comp_id + "'";
            rs = stmt.executeQuery(y);
            while (rs.next()) {
                comp_message = rs.getString("msg");
                comp_date = rs.getString("date");
            }
            out.print(comp_message + "  " + comp_date);
        
      out.write("\n");
      out.write("        <a href=\"accepted_comp_requirements.jsp\">ADD REQUIREMENTS</a>\n");
      out.write("\n");
      out.write("        ");
}
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
