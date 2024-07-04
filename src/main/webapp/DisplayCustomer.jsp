<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource var="dataSource"
     driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
     url="jdbc:sqlserver://localhost:1433;databaseName=myDatabase;encrypt=false;trustServerCertificate=true"
     user="test" password = "test@123" />
     
<body>
  <sql:query var="customers" dataSource="${dataSource}">
     select * from Customer
  </sql:query>

<table border>
 <tr>
   <th>Customer Name</th>
   <th>Customer Username</th>
   <th>Customer Password</th>
   <th>Customer Age</th>
   <th>Customer Email</th>
 </tr>
 <c:forEach var="customer" items="${customers.rows}">
     <tr>
         <td><c:out value="${customer.custName}" /></td>
         <td><c:out value="${customer.username}" /></td>
         <td><c:out value="${customer.password}" /></td>
         <td><c:out value="${customer.age}" /></td>
         <td><c:out value="${customer.email}" /></td>
     </tr> 
 </c:forEach>
</table>
</body>     
     