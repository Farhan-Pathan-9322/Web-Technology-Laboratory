<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
    <title>Insert Student Record</title>
</head>
<body>
    <h2>Insert Student Record</h2>
    <form method="post">
        Stud_id: <input type="text" name="stud_id"><br>
        Name: <input type="text" name="name"><br>
        Class: <input type="text" name="class"><br>
        Division: <input type="text" name="division"><br>
        City: <input type="text" name="city"><br>
        <input type="submit" value="Insert">
    </form>

    <%
        String stud_id = request.getParameter("stud_id");
        String name = request.getParameter("name");
        String className = request.getParameter("class");
        String division = request.getParameter("division");
        String city = request.getParameter("city");

        if (stud_id != null && name != null && className != null && division != null && city != null) {
            Connection con = null;
            PreparedStatement pstmt = null;
            PrintWriter pw = response.getWriter();

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");

                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pragati", "root", "");

                String query = "INSERT INTO student_info (Stud_id, Name, Class, Division, City) VALUES (?, ?, ?, ?, ?)";
                pstmt = con.prepareStatement(query);

                pstmt.setInt(1, Integer.parseInt(stud_id));
                pstmt.setString(2, name);
                pstmt.setString(3, className);
                pstmt.setString(4, division);
                pstmt.setString(5, city);

                int result = pstmt.executeUpdate();

                if (result > 0) {
                    pw.println("<h1>Record added successfully!</h1>");
                } else {
                    pw.println("<h1>Error: Unable to add the record.</h1>");
                }
            } catch (Exception e) {
                pw.println("<h1>Error: " + e.getMessage() + "</h1>");
            } finally {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (con != null) {
                    con.close();
                }
            }
        }
    %>
</body>
</html>
