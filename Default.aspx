<%@ Page Title="MainPage" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MainWebsite.Default" %>

<html>

<head runat="server">

  <environment include="Development">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="~/css/app.css" />
    <link rel="stylesheet" href="~/css/style.css" />
    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />
    <link rel="shortcut icon" type="image/png" href="images/favicon.png"/>
  </environment>
  <script runat="server">
    const string URL = "URL";

  </script>


</head>
<form runat="server">
       <body >
       <div class="context">
         <nav class="navbar navbar-custom">
        
         <div class="area" >
           <ul class="circles">
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
                   <li></li>
           </ul>
         </div >
         
        <!-- Navbar brand -->
           <a class="navbar-brand header-navbar" href="#">
            <h4 class="wordCarousel">    
                    <div>
                      <ul class="flip2"> 
                        <li style="  -webkit-font-smoothing: antialiased;-webkit-font-kerning: normal;">Short Url</li>
                        <li style="  -webkit-font-smoothing: antialiased;-webkit-font-kerning: normal;">Very Short URL</li>
                            
                        </ul>
                    </div>  
                </h4>
            </a>
         </nav>
       </div>
       
         
  <%-- <div class="form-row align-items-center"> --%>
  <%--   <div class="col-auto"> --%>
  <%--     <label class="sr-only" for="inlineFormInput">Name</label> --%>
  <%--       $1$ <Asp:TextBox  class="btn btn-primary mb-2" placeholder="Your Url" ID="TxtSubmitUrl"  /> #1# --%>
  <%--   </div> --%>
  <%--   <div class="col-auto"> --%>
  <%--   </div> --%>
  <%--     <div class="col-auto"> --%>
  <%--     <label class="sr-only">Please Enter a Valid URL</label> --%>
  <%--     </div> --%>
  <%--   </div> --%>
       
       
       
       <div class="bg text-center">
    <!--Div for Centered Text & Input-->
    <div class="centered">
      <div class="row mainpageRow">
      <p class="line">Get a Shortened URL Quick!</p>
        </div>
      <div class="row mainpageRow">
      <input type="text" class="form-control controlUrl" id="inlineFormInput" name="TxtSubmitUrl" placeholder="Your URL">
        </div>
      <div class="row mainpageRow">
         <Asp:Button   class="btn btn-light confirmButton" runat="server" ID="SubmitUrl"  OnClick="SubmitUrl_OnClick" Text="Generate Short URL"/>
        </div>
      
      <div id="ccButton" runat="server">
        <ASP:Label class="line" runat="server" ID="TXTUrlOutput"/>
       <span  runat="server" ID="clipboard" data-tooltip="Copy to ClipBoard"><button type="button" class="btn btn-light copytoclipoard"  onclick="copyElementText('TXTUrlOutput')">
         
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-clipboard" viewBox="0 0 16 16">
  <path d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"></path>
  <path d="M9.5 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5h3zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3z"></path>
</svg>
         
              </button>
</span> 
      </div>
       
    </div>
       </div>
       
       
       
  </body>
       

         <footer>
             <div class="alert text-center cookiealert"  role="alert">
                 <b>Cookies?</b> &#x1F36A; I am using cookies to ensure you get the best experience on my website. <a href="https://cookiesandyou.com/" target="_blank">Learn more</a>
            <br/>
               <button type="button" class="btn btn-light acceptcookies">Accept Cookies</button>
               </div>
         </footer>
       
            </form>
 
<environment include="Development">
          <script src="/Scripts/jquery-3.0.0.js"></script>
      <script src="/Scripts/timelite/gsap.min.js"></script>
          <script src="/JavaScript/code.js" ></script>
       <script src="/Scripts/bootstrap.bundle.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
        $('.carousel').carousel({
          interval: 6000
        })
        
      });
      
      function copyElementText(id) {
    var text = document.getElementById(id).innerText;
    var elem = document.createElement("textarea");
    document.body.appendChild(elem);
    elem.value = text.slice(text.length - 20);
    elem.select();
    document.execCommand("copy");
    document.body.removeChild(elem);
}
    </script>
   
  
    
</environment>
</html>
