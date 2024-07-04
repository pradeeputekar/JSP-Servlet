<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:out value="Welcome to JSTL"/>
<c:set var="num1" value="${10}"/>
<c:set var="num2" value="${20}"/>

<c:choose>
        <c:when test="${num1 gt num2}">
           Big : <c:out value="${num1}" />
          </c:when>
      <c:otherwise>
            Big : <c:out value="${num2}" />
      </c:otherwise>
</c:choose>
