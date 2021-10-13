<%@ Page Language="C#" CodeBehind="RedirectPage.aspx.cs" Inherits="MainWebsite.RedirectPage" %>
<html>

<head runat="server">

  <environment include="Development">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/4b9ba14b0f.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="~/css/app.css" />
    <link rel="stylesheet" href="~/css/style.css" />
    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />
    <link rel="shortcut icon" type="image/png" href="images/favicon.png"/>
</environment>


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
       
          
       
        
       
       
       
  <div class="mainbox">
    <div class="err">4</div>
    <i class="far fa-question-circle fa-spin"></i>
    <div class="err2">4</div>
    <div class="msg"><p>Can't find your URL, something is missing??</p><p>Create <a href="https://whiraj.me">new</a> one?</p></div>
      </div>
   
</body>  
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
    </script>
   
  
    
</environment>
</html>
