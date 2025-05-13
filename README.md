[![Main branch build status](https://github.com/grace-guides/gs-jsp-tags/workflows/Grace%20CI/badge.svg?style=flat)](https://github.com/grace-guides/gs-jsp-tags/actions?query=workflow%3A%Grace+CI%22)
[![Apache 2.0 license](https://img.shields.io/badge/License-APACHE%202.0-green.svg?logo=APACHE&style=flat)](https://opensource.org/licenses/Apache-2.0)
[![Grace on X](https://img.shields.io/twitter/follow/graceframework?style=social)](https://twitter.com/graceframework)

[![Groovy Version](https://img.shields.io/badge/Groovy-4.0.24-blue?style=flat&color=4298b8)](https://groovy-lang.org/releasenotes/groovy-4.0.html)
[![Grace Version](https://img.shields.io/badge/Grace-2023.3.0-blue?style=flat&color=f49b06)](https://github.com/graceframework/grace-framework/releases/tag/v2023.3.0-M2)
[![Spring Boot Version](https://img.shields.io/badge/Spring_Boot-3.3.7-blue?style=flat&color=6db33f)](https://github.com/spring-projects/spring-boot/releases/tag/v3.3.10)


# Using JSP Tags in Grace

## Grace Version

* Grace 2023.3.0-M2

> [!TIP]
> If you want to use JSP tags in Grace 2022.2.x, please checkout branch [main](https://github.com/grace-guides/gs-jsp-tags).

## Using JSP Tag Libraries

In order to use JSP support you must ensure you have the `grace-web-jsp` dependency on your classpath by adding it to your `build.gradle` file:

```gradle

dependencies {

    // Using JSP tags
    runtimeOnly "org.graceframework:grace-web-jsp"
    // JSTL standard library is no longer added as a dependency by default
    runtimeOnly "jakarta.servlet.jsp:jakarta.servlet.jsp-api"
    runtimeOnly "jakarta.servlet.jsp.jstl:jakarta.servlet.jsp.jstl-api"
    runtimeOnly "org.glassfish.web:jakarta.servlet.jsp.jstl:3.0.1"

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

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

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
