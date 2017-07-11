<%@ WebService Language="C#" Class="WebService1" %>

using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Web;
using System.Web.Services;

[WebService(Namespace = "http://localhost:60861/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService1 : System.Web.Services.WebService 
{
    public WebService1()
    {
        //
        // TODO: Add any constructor code required
        //
    }

    // WEB SERVICE EXAMPLE
    // The HelloWorld() example service returns the string Hello World.

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }
        [WebMethod]
public int Add(int a, int b)
{
   return(a + b);
}

[WebMethod]
public System.Single Subtract(System.Single A, System.Single B)
{
   return (A - B);
}

[WebMethod]
public System.Single Multiply(System.Single A, System.Single B)
{
   return A * B;
}

[WebMethod]
public System.Single Divide(System.Single A, System.Single B)
{
   if(B == 0)
      return -1;
   return Convert.ToSingle(A / B);
}
}
