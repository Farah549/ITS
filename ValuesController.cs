using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Api.Controller
{

    /// <summary>
    /// General Structure of an api controller 
    /// Get() method will handle HTTP GET request , Post() method will handle HTTP POST request, 
    /// Put() mehtod will handle HTTP PUT request and Delete() method will handle HTTP DELETE
    /// </summary>
    public class ValuesController : ApiController
    {
        // GET api/<controller>
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        /// <summary>
        /// [FromBody] attribute to get the value of primitive data type from the request body instead of query string,
        /// </summary>
        /// <param name="value"></param>
        public HttpResponseMessage Post([FromBody]string value)
        {
            return Request.CreateResponse(HttpStatusCode.OK);
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}