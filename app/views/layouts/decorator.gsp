<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page" %>
<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <decorator:title default="SiteMesh Decorator"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <decorator:head/>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" role="navigation">
    <div class="container">
        <a class="navbar-brand" href="/"><asset:image src="grace.svg" alt="Grace Logo"/>&nbsp;<strong>SiteMesh Decorators</strong></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" aria-expanded="false" id="navbarContent">
            <ul class="navbar-nav ms-auto navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                        <li><a class="dropdown-item" href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                        <li><a class="dropdown-item" href="#">App version:
                            <g:meta name="info.app.version"/></a>
                        </li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Grace version:
                            <g:meta name="info.app.grailsVersion"/></a>
                        </li>
                        <li><a class="dropdown-item" href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                        <li><a class="dropdown-item" href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<decorator:body/>

<div class="footer" role="contentinfo">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <a href="https://github.com/grace-guides" target="_blank">
                    <asset:image src="guides.svg" alt="Grace Guides" class="float-left"/>
                </a>
                <strong class="centered"><a href="https://github.com/grace-guides" target="_blank">Grace Guides</a></strong>
                <p>Building your first Grace app? Looking to add security, or create a Single-Page-App? Check out the <a href="https://github.com/grace-guides" target="_blank">Grace Guides</a> for step-by-step tutorials.</p>

            </div>
        </div>
    </div>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
