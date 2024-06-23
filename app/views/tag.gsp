<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>JSP Tags Demo</title>
</head>
<body>

<div id="content" role="main">
    <div class="container">
        <section class="row">
            <h1>Using JSP Tags</h1>

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Code</title>
                        <th>Result</title>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>&lt;fmt:formatNumber value="10" pattern=".00" /&gt;</td>
                        <td><fmt:formatNumber value="10" pattern=".00" /></td>
                    </tr>
                    <tr>
                        <td>
                            &lt;c:set var="balance" value="12100.2509" /&gt;<br/>
                            &lt;fmt:formatNumber value="${balance}" type ="currency" /&gt;<br/>
                        </td>
                        <td>
                            <c:set var="balance" value="12100.2509" />
                            <fmt:formatNumber value="${balance}" type ="currency" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &lt;c:set var="salary" scope="page" value="${2000 * 2}" /&gt;<br/>
                            &lt;c:if test="${salary > 2000}"&gt;<br/>
                            &nbsp;&nbsp;&nbsp;&nbsp;My salary is:  &lt;c:out value="${salary}"/&gt;<br/>
                            &lt;/c:if&gt;<br/>
                        </td>
                        <td>
                            <c:set var="salary" scope="page" value="${2000 * 2}" />
                            <c:if test="${salary > 2000}">
                                My salary is:  <c:out value="${salary}"/>
                            </c:if>
                        </td>
                    </tr>
                </tbody>
            </table>
        </section>
    </div>
</div>

</body>
</html>