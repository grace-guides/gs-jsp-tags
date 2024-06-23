# Using JSP Tags in Grace

## Grace Version

* Grace 2022.2.6

> [!TIP]
> If you want to use JSP tags in Grace 2023.0.0, please checkout branch [2023.0.x](https://github.com/grace-guides/gs-jsp-tags/tree/2023.0.x).

## Using JSP Tag Libraries

In order to use JSP support you must ensure you have the `grace-web-jsp` dependency on your classpath by adding it to your `build.gradle` file:

```gradle

dependencies {

    // Using JSP tags
    runtimeOnly "org.graceframework:grace-web-jsp"
    // JSTL standard library is no longer added as a dependency by default
    runtimeOnly "jakarta.servlet.jsp:jakarta.servlet.jsp-api:2.3.6"
    runtimeOnly "jakarta.servlet.jsp.jstl:jakarta.servlet.jsp.jstl-api:1.2.7"
    runtimeOnly "org.glassfish.web:jakarta.servlet.jsp.jstl:1.2.6"

}

```

First you shoud configure Grace to scan for the JSP tld files,

```yml
grails:
    gsp:
        tldScanPattern: 'classpath*:/META-INF/*.tld'
```

Declare the JSP taglib to use with the taglib directive at the top of your GSP file:

```

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

```

Now you can use JSP tags like any other tag:

```gsp

<fmt:formatNumber value="10" pattern=".00" />

<c:set var="balance" value="12100.2509" />
<fmt:formatNumber value="${balance}" type ="currency" />

<c:set var="salary" scope="page" value="${2000 * 2}" />
<c:if test="${salary > 2000}">
    My salary is:  <c:out value="${salary}"/>
</c:if>
```

## Links

- [Grace Framework](https://github.com/graceframework/grace-framework)
- [Grace Plugins](https://github.com/grace-plugins)
- [Grace Guides](https://github.com/grace-guides)
