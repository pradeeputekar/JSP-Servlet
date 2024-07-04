<jsp:useBean id="book" class="mypack.Book" scope="session" />
<table border>
    <tr>
       <th>Book Num</th>
       <td><jsp:getProperty property="bno" name="book"/></td>
    </tr>
     <tr>
       <th>Book Name</th>
       <td><jsp:getProperty property="bname" name="book"/></td>
    </tr>
     <tr>
       <th>Book Price</th>
       <td><jsp:getProperty property="price" name="book"/></td>
    </tr>
       
       
    
</table>