<%-- 
    Document   : apply_receive1
    Created on : 22 Apr, 2019, 11:32:18 PM
    Author     : HP
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>      
        <%!
            String status1 = "waiting";
            String companyid1 = "", company_per = "", stu_backlog = "", req_backlog = "", stu_roll1 = "";
            String desirecompany1 = "", stu_rollno = "", stu_name = "", stu_per = "", comp_email = "", stu_email = "";
            int company_per1, stu_per1, stu_backlog1, req_backlog1;
        %>
        <%

                HttpSession hs = request.getSession();
                stu_rollno = hs.getAttribute("stu_roll").toString();
                companyid1 = request.getParameter("companyid");
                Calendar c1 = Calendar.getInstance();
                //  out.print( stu_rollno+"  "+companyid1);

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");
                Statement stmt = con.createStatement();
                String x = "select * from companyrequirements where id='" + companyid1 + "'";
                ResultSet rs = stmt.executeQuery(x);
                while (rs.next()) {
                    desirecompany1 = rs.getString("companyname");
                    company_per = rs.getString("requiredpercentage");
                    req_backlog = rs.getString("requiredbacklog");
                    c1.setTimeInMillis(rs.getDate("date").getTime());
                }

                /* out.println(desirecompany1);
          out.println(company_per);
          out.println(req_backlog);
          out.println(stu_rollno);
          out.println(companyid1);*/
                String w = "select * from companysignup where companyname='" + desirecompany1 + "'";
                ResultSet rs3 = stmt.executeQuery(w);
                while (rs3.next()) {

                    comp_email = rs3.getString("companyemail");
                }
                //out.println(comp_email);

                String y = "select * from studentsignup where studentrollno='" + stu_rollno + "'";
                ResultSet r = stmt.executeQuery(y);
                while (r.next()) {
                    stu_name = r.getString("studentname");
                    stu_per = r.getString("cgpa");
                    stu_backlog = r.getString("backlog");
                    stu_email = r.getString("studentemail");
                }
                /*out.println(stu_name);
          out.println(stu_backlog);
          out.println(stu_per);
          out.println(stu_email);*/

                String j = "select * from interestedstudents where student_rollno='" + stu_rollno + "' and company_name='" + desirecompany1 + "'";

                ResultSet r1 = stmt.executeQuery(j);
                while (r1.next()) {
                    stu_roll1 = r1.getString("student_rollno");

                }
                //out.println(stu_roll1);

                stu_per1 = Integer.parseInt(stu_per);
                company_per1 = Integer.parseInt(company_per);
                req_backlog1 = Integer.parseInt(req_backlog);
                stu_backlog1 = Integer.parseInt(stu_backlog);
                // out.print(stu_roll1);
                Calendar current = Calendar.getInstance();
                if (current.before(c1)) {

                    if (!stu_roll1.equals(stu_rollno)) {

                        if (stu_backlog1 <= req_backlog1) {

                            if (stu_per1 >= company_per1) {

                                String z = "insert into interestedstudents values(null,'" + desirecompany1 + "','" + comp_email + "','" + stu_name + "','" + stu_rollno + "','" + stu_email + "','" + status1 + "')";
                                stmt.executeUpdate(z);
                                out.print("<script>alert('done');</script>");

                                out.print("<script>window.close();</script>");
                            } else {

                                out.print("<script>alert('your percentage is less than company requirements');</script>");
                                out.print("<script>window.close();</script>");
                            }

                        } else {
                            out.print("<script>alert('you have more backlog. better luck next time');</script>");
                            out.print("<script>window.close();</script>");
                        }
                    } else {

                        out.print("<script>alert('you already apply in this company');</script>");
                        out.print("<script>window.close();</script>");
                    }
                }
                out.print("<script>alert('APPLY DATE EXPIRE');</script>");

                out.print("<script>window.close();</script>");
            }
            // HttpSession hs=request.getSession();
            //desirecompany1= hs.getAttribute("desirecompany").toString();
            //out.print(desirecompany1);
            // response.sendRedirect("home_student.jsp");
%>



    </body>
</html>
