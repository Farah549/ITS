using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace Api.Configuration
{
    public static class WebApiConfig
    {
        //This cs file will confilg routes for our api 
        // you can configure different things like 
        /// <summary>
        /// DependencyResolver  :-  Gets or sets the dependency resolver for dependency injection.
        /// Filters  :-  Gets or sets the filters.
        /// Formatters :- Gets or sets the media-type formatters. 
        /// IncludeErrorDetailPolicy :- Gets or sets a value indicating whether error details should be included in error messages. 
        /// MessageHandlers :- Gets or sets the message handlers.
        /// ParameterBindingRule :-  Gets the collection of rules for how parameters should be bound.
        /// Properties :- Gets the properties associated with this Web API instance.
        /// Routes :- Gets the collection of routes configured for the Web API.
        /// Services :- Gets the Web API services. 
        /// </summary>
        /// <param name="config"></param>
        public static void Register(HttpConfiguration config)
        {
            ///Enable attribute routing if we want special kind of rout for some specific method
            config.MapHttpAttributeRoutes();

            ///add rout template 
            config.Routes.MapHttpRoute(
                name: "default",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
                );
        }
    }
}