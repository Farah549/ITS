using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Api.Controller
{

    /// <summary>
    /// If you want to write methods that do not start with an HTTP verb then you can apply
    /// the appropriate http verb attribute on the method such as 
    /// HttpGet, HttpPost, HttpPut etc. same as MVC controller.
    /// </summary>
    public class ValuesOneController : ApiController
    {
        [HttpGet]
        // GET: api/ValuesOne
        public IEnumerable<string> Values()
        {
            return new string[] { "value1", "value2" };
        }

        [HttpGet]
        // GET: api/ValuesOne/5
        public string Values(int id)
        {
            return "value";
        }

        [HttpPost]
        // POST: api/ValuesOne
        public void SaveNewValue([FromBody]string value)
        {
        }
        [HttpPut]
        // PUT: api/ValuesOne/5
        public void UpdateValue(int id, [FromBody]string value)
        {
        }
        [HttpDelete]
        // DELETE: api/ValuesOne/5
        public void RemoveValue(int id)
        {
        }
    }
}
