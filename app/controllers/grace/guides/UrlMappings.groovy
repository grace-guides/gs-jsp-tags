package grace.guides

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/tag"(view:"/tag")
        "/site"(view:"/site")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
