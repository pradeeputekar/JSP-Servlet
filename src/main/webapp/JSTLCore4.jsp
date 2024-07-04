<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:forTokens items="apple,mango,orange" delims="," var="fruits">
   <c:out value="${fruits}" />
</c:forTokens>