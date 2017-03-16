<!DOCTYPE html>
<html>

<head>
    
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic" rel="stylesheet" />
<link href="login.css" rel="stylesheet" type="text/css" media="all" />

    <title>${title}</title>
</head>

<body>


<div class="container">  
  <form  action="/submit" method="post">
    <h3>Colorlib Contact Form</h3>
    <h4>Contact us for custom quote</h4>
    <fieldset>
      <input placeholder="Your name" type="text"  name= "name" required autofocus>
    </fieldset>
    <fieldset>
      <input placeholder="Your Email Address" type="email" name= "email"  required>
    </fieldset>
    <fieldset>
      <input placeholder="Your Phone Number (optional)" type="tel"  name= "number" required>
    </fieldset>
    <fieldset>
      <input placeholder="Your Web Site (optional)" type="url"  name= "web"  required>
    </fieldset>
    <fieldset>
      <textarea placeholder="Type your message here...." type= "text" name= "message"  required></textarea>
    </fieldset>
    <fieldset>
      <button name="submit" type="submit" id="submit" data-submit="...Sending">Submit</button>
    </fieldset>
    <p class="copyright">@Possible Inc. <a href="https://colorlib.com" target="_blank" title="Colorlib">Philippines</a></p>
  </form>
</div>
    
    
    
    </body>
    
</html>