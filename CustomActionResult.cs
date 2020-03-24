using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;

namespace Api
{
    /// <summary>
    /// This is custom class that will send httpaction result when an api is called 
    /// </summary>
    public class CustomActionResult : IHttpActionResult
    {

        string _value;
        HttpRequestMessage _request;

        public CustomActionResult(string value, HttpRequestMessage request)
        {
            _value = value;
            _request = request;
        }
        public Task<HttpResponseMessage> ExecuteAsync(CancellationToken cancellationToken)
        {
            HttpResponseMessage response = new HttpResponseMessage()
            {
                Content = new StringContent(_value),
                RequestMessage = _request
            };

            return Task.FromResult(response);
        }
    }
}