
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

<body background="https://w-dog.net/wallpapers/12/2/422744970322743/close-up-fence-fence-fencing-bokeh-lights-blur-night-night-bokeh-macro-background-wallpaper-widescreen-full-screen-widescreen-hd-wallpapers-background-wallpaper-widescreen-fullscreen-widescreen.jpg">

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
     
 
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      <li>
       <a href="/home"><img src="\img\telephone.png" height="40" width="40" alt="">Passible</a>
        </li>
        <li class="active">
        	<a href="/submit">Add Contact
          	<span class="sr-only">(current)</span>
        	</a>
        </li>
        <li>
        	<a href="/post">Delete Contact</a>
        </li>

        <li>
        	<a href="/list"> View Contact</a>
        </li>
      </ul>
          
	</div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<div class="container" >
<div class="row jumbotron">
  <div class="text-center" >
    <h2>Add Your Contact</h2>
  </div>

<div class="col-md-4"></div>
  <div class="col-md-4" >
    

  <form method = "post" action="/submit">
    <div class="form-group">
      <label for="exampleInputCode">Your Name</label>
      <input type="code" name="code" class="form-control" id="item_code" placeholder="name nimu biss">
    </div>
    <div class="form-group">
      <label for="exampleInputName">Your Email</label>
      <input type="name" name="name" class="form-control" id="item_name" placeholder="melowjean@example.com">
    </div>
    <div class="form-group">
      <label for="exampleInputName">Your Number</label>
      <input type="num" name="number" class="form-control" id="item_number" placeholder="09xxxxxxxxx">
    </div>
   
    <button type="submit" class="btn btn-default">
      Create
    </button>
    <button type="submit" class="btn btn-default">
    <a href="/home"> Back to Homepage </a>
    </button>
  </form>
  </div>
</div>
</div>

</body>
</html>
