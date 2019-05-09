package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.*;

public final class your_005finbox_005fstudent_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String name="";
            String message="";
            String subject=""; 
            int id;
            String design="";
            String roll_no="";
            String time="";
            int statuskey;
            int seen;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header_student.jsp");
  }

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
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.1/css/all.css\" integrity=\"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Messages</title>\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("            \n");
      out.write("            .hover tr:hover{\n");
      out.write("                background-color:#F2D0D1;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            tr{\n");
      out.write("                font-size:150%; \n");
      out.write("            }\n");
      out.write("               .topics{\n");
      out.write("                    color: #333333;\n");
      out.write("                        text-align:left;\n");
      out.write("                        padding-left:100px;\n");
      out.write("                        text-transform: capitalize;\n");
      out.write("                }\n");
      out.write("                .line1{\n");
      out.write("                    border-color: #A9A9A9;\n");
      out.write("                }\n");
      out.write("                                    .linkq{\n");
      out.write("                        text-align: right;\n");
      out.write("                        padding-right:50px;\n");
      out.write("                        color:  #333333;\n");
      out.write("                        font-size: 130%;\n");
      out.write("                    }\n");
      out.write("                    .linkq:hover{\n");
      out.write("                        opacity: 0.9;\n");
      out.write("                    }\n");
      out.write("                               .topics{\n");
      out.write("                    color: #333333;\n");
      out.write("                        text-align:left;\n");
      out.write("                        text-transform: capitalize;\n");
      out.write("                }\n");
      out.write("                .line1{\n");
      out.write("                    border-color: #A9A9A9;\n");
      out.write("                }\n");
      out.write("                            .time-right{\n");
      out.write("                color: #696969;\n");
      out.write("               text-align: right;\n");
      out.write("               padding-right: 50px;\n");
      out.write("                            }\n");
      out.write("                                        .userr{\n");
      out.write("                padding-top:10px;\n");
      out.write("                padding-left:50px;\n");
      out.write("                text-align: left;\n");
      out.write("                font-weight: 600;\n");
      out.write("                color: #333333;\n");
      out.write("            }\n");
      out.write("                            .notices{\n");
      out.write("                    display: flex;\n");
      out.write("                    flex-direction: column;\n");
      out.write("                    justify-content: center;\n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("                    border: solid #2F4F4F;\n");
      out.write("                    background-color: \t#E9967A;\n");
      out.write("                     color: #333333;\n");
      out.write("                     border-radius:2px;\n");
      out.write("                     padding: 10px;\n");
      out.write("                       \n");
      out.write("                      width :80%;\n");
      out.write("                    opacity: 1;\n");
      out.write("                    filter: alpha(opacity=50); \n");
      out.write("                   margin-bottom:10px;\n");
      out.write("                   \n");
      out.write("                }  \n");
      out.write("                       .notices:hover{\n");
      out.write("                    \n");
      out.write("                        opacity: 0.8;\n");
      out.write("                        \n");
      out.write("                    }\n");
      out.write("                                            .notices-uns{\n");
      out.write("                    display: flex;\n");
      out.write("                    flex-direction: column;\n");
      out.write("                    justify-content: center;\n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("                    border: solid #2F4F4F;\n");
      out.write("                    background-color: \t#FF7F50;\n");
      out.write("                     color: #333333;\n");
      out.write("                     border-radius:2px;\n");
      out.write("                     padding: 10px;\n");
      out.write("                       \n");
      out.write("                      width :80%;\n");
      out.write("                    opacity: 1;\n");
      out.write("                    filter: alpha(opacity=50); \n");
      out.write("                   margin-bottom:10px;\n");
      out.write("                   \n");
      out.write("                }  \n");
      out.write("             \n");
      out.write("                    .notices-uns:hover\n");
      out.write("                    {\n");
      out.write("                        opacity: 0.8;\n");
      out.write("                    }\n");
      out.write("                 \n");
      out.write("\n");
      out.write("           \n");
      out.write("        </style>\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <!--Start of Navbar Section-->\n");
      out.write("           ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>\n");
      out.write("        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>\n");
      out.write("        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>\n");
      out.write("\n");
      out.write("        <title>HEADER STUDENT</title>\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            #navbar-links{\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            #navbar-links:hover{\n");
      out.write("                color:black;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        function changepassword() {\n");
      out.write("            window.open('changepassword_student.jsp', 'popUpWindow', 'height=500,width=600,left=10%,top=200,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no, status=yes');\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <section> \n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-lg-12\">\n");
      out.write("                <h1 style=\"float:left;padding-left:20px;\">Placement Cell</h1>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <section>\n");
      out.write("        <nav class=\"navbar navbar-dark bg-primary \">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle \" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>                        \n");
      out.write("                    </button>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li class=\"active\"><a href=\"home_student.jsp\" id=\"navbar-links\">HOME</a></li>\n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"placement_student.jsp\" id=\"navbar-links\">COMPANIES INFORMATION<span class=\"caret\"></span></a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <li><a href=\"placement_student.jsp\">UPCOMING COMPANIES</a></li>\n");
      out.write("                                <li><a href=\"apply_job.jsp\">APPLY FOR JOB</a></li>\n");
      out.write("                                <li><a href=\"student_result.jsp\">COMPANIES RESULT</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li><a href=\"apply_job1.jsp\" id=\"navbar-links\">APPLY FOR JOB</a></li>\n");
      out.write("                        <li><a href=\"profile_student.jsp\" id=\"navbar-links\">PROFILE</a></li>\n");
      out.write("                        <li><a href=\"contactf_stud.jsp\" id=\"navbar-links\">CONTACT FORM</a></li>\n");
      out.write("                        <li><a href=\"view_upload_paper_student.jsp\" id=\"navbar-links\">PREVIOUS YEAR PAPERS</a></li>\n");
      out.write("                        <li><a href=\"your_inbox_student.jsp\" id=\"navbar-links\">MESSAGES </a></li>\n");
      out.write("                        <li><a onclick=\"changepassword()\" id=\"navbar-links\">CHANGE PASSWORD</a></li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li><a href=\"logout\" id=\"navbar-links\"><span class=\"glyphicon glyphicon-log-out\"></span> LOGOUT</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <!--End of Navbar Section-->\n");
      out.write("        \n");
      out.write("                ");
      out.write("\n");
      out.write("        <section>\n");
      out.write("            <div class=\"container\">\n");
      out.write("  \n");
      out.write("                         <h1 class=\"topics\" ><i class=\"fas fa-envelope-open-text\"></i> Your Queries</h1>\n");
      out.write("            <hr class=\"line1\">\n");
      out.write("            <a href=\"contactf_stud.jsp\"><h5 class=\"linkq\"><i class=\"far fa-edit\"></i>New Query</h5></a> \n");
      out.write("            <br><br>\n");
      out.write("        ");

            HttpSession hs = request.getSession();
            roll_no=hs.getAttribute("stu_roll").toString();
        
            try{ 
           
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
                Statement st=conn.createStatement();
                String x2="Select * from studentsignup where studentrollno='"+roll_no+"'";
                ResultSet rs=st.executeQuery(x2);
                while(rs.next())
                {
                    name=rs.getString("studentname");

                }
            }   
            catch(Exception ex){
                out.print(ex);
            }
        
           
      out.write("\n");
      out.write("           \n");
      out.write("          ");

           
            roll_no=hs.getAttribute("stu_roll").toString();
        
             try{ 
           
         Class.forName("com.mysql.jdbc.Driver");
         Connection con1=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=con1.createStatement();
                 String x2="Select * from studentsignup where studentrollno='"+roll_no+"'";
         ResultSet rs=st.executeQuery(x2);
         while(rs.next())
         {
             name=rs.getString("studentname");
         
         }

        String x1="Select * from queries where Name='"+name+"' having Designation='student'  order by ID Desc ";
       
        ResultSet rs1=st.executeQuery(x1);
          while(rs1.next())
         {
             id=rs1.getInt("ID");
           name=rs1.getString("Name");
           message=rs1.getString("Message");
           subject=rs1.getString("Subject");
           design=rs1.getString("Designation");  
           statuskey=rs1.getInt("Status");
          time=rs1.getString("TimeofReply");
          seen=rs1.getInt("seen");
          
      out.write("\n");
      out.write("                           <a href=\"student_tickets.jsp?id=");
      out.print(id);
      out.write("  \">\n");
      out.write("                  <div class=\"msgbox\">\n");
      out.write("                <div class=\"container-center\" >\n");
      out.write("                    <div    ");
if(seen==0){
      out.write(" class=\"notices-uns\"");
}else{
      out.write("class=\"notices\" ");
}
      out.write(">\n");
      out.write("                        <h4 class=\"userr\">      ");
if(statuskey==2){
      out.write("<i class=\"fas fa-envelope\"></i>");
}else if(statuskey==1){
      out.write("<i class=\"far fa-envelope-open\"></i>");
}else{
      out.write("<i class=\"far fa-envelope\"></i>");
}
      out.write("      ");
      out.print(subject);
      out.write("<h6 class=\"time-right\">");
      out.print(time);
      out.write("</h6></h4> \n");
      out.write("                     \n");
      out.write("                 </div>\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("                </a>\n");
      out.write("           ");
       
         }
       }   
        catch(Exception ex)
       {
           out.print(ex);
       }
        
           
      out.write("     \n");
      out.write("                       <br>\n");
      out.write("                <br>\n");
      out.write("  \n");
      out.write("\n");
      out.write("                <br><br>\n");
      out.write("                <br><br>\n");
      out.write("                <br><br>\n");
      out.write("                <br><br>\n");
      out.write("                <br><br>\n");
      out.write("                <br><br>\n");
      out.write("                <br><br>\n");
      out.write("                <br><br>\n");
      out.write("                <br><br>\n");
      out.write("        <section>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
