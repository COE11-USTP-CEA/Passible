<!DOCTYPE html>
<html>
   
<head>

	<link rel="shortcut icon" href="http://www.clipartbest.com/cliparts/Kcn/eM6/KcneM6q9i.png" type="image/png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="w3-black-theme.css">
<link rel="stylesheet" href="font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <title>${title}</title>


</head> 
<body background="https://w-dog.net/wallpapers/12/2/454972005647335/close-up-bokeh-blur-town-lights-fencing-macro-background-wallpaper-widescreen-full-screen-widescreen-hd-wallpapers-background-wallpaper.jpg">
<!-- Navbar -->
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
 <a href="/home"><img src="\img\telephone.png" height="40" width="40" alt="">Passible</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active">
        	<a href="/submit">Add Contact
        	</a>
        </li>
        <li>
        	<a href="/post">Delete Contact</a>
        </li>

        <li>
        	<a href="/list">View Contact</a>
        </li>
      </ul>
       
      
	</div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
  <div class="text-center">
     <font color="powderblue"><h2>You are about to delete  this contact name: (${item.code})</h2></font>
  </div>

<div class="row jumbotron" style="background-color:rgba(0, 0, 0, 0.5);">
  <div class="col-md-4"></div>
  <div class="col-md-4">
    
 <font color="powderblue"><h3>  Name:  ${item.code}</h3></font>
 <font color="powderblue"><h3> Email:  ${item.name}</h3></font>
 <font color="powderblue"><h3>Number:  ${item.number}</h3></font>
 <font color="powderblue"><h3>Number:  ${item.web}</h3></font>


<form  method="post" action="/delete">
<input type="hidden" name="code" class="form-control" id="item_code" value="${item.code}">
    <button type="submit" class="btn btn-default">
      Delete
    </button>
</form>



<div class="btn-group" role="group" aria-label="...">
  
    <button type="button" class="btn btn-default">
      <a href="/list">
        View Contact list
      </a>
    </button>
</div>

<a href="/list">Cancel</a>

  </div>
  <div class="col-md-4"></div>

</div>

</body>
</html>
  

