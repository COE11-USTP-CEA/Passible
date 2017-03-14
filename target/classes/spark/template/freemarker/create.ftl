<!DOCTYPE html>
<html>
 
<head>
    
 <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic" rel="stylesheet" />
<link href="login.css" rel="stylesheet" type="text/css" media="all" />

    <title>${title}</title>
</head>

<body>


<div class="container">  
  <form  action="/view" method="post">
    <h3>Colorlib Contact Form</h3>
    <h4>Contact us for custom quote</h4>
    
    <p>Name  ${name}</p>
    <p>Email ${email}</p>
    <p>Number: ${number}</p>
    <p>Web Address: ${web}</p>
     <p>Your Message: ${message}</p>
     
     <p class="copyright">@Possible Inc. <a href="https://colorlib.com" target="_blank" title="Colorlib">Philippines</a></p>
  </form>
</div>
    
    
    
    </body>
    
</html>