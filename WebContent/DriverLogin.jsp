<%
       String name=request.getParameter("nm");
       String pwd=request.getParameter("pwd");
       
       if(name.equals("Rakesh")&&pwd.equals("1234"))
       {
    	   response.sendRedirect("DHome.jsp");
       }
       else
       {
    	   response.sendRedirect("error.jsp");
       }
       
%>