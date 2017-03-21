
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
<body background="https://w-dog.net/wallpapers/12/2/422744970322743/close-up-fence-fence-fencing-bokeh-lights-blur-night-night-bokeh-macro-background-wallpaper-widescreen-full-screen-widescreen-hd-wallpapers-background-wallpaper-widescreen-fullscreen-widescreen.jpg" >
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
        		<span class="sr-only">(current)</span>
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


<div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-8">
  	
	<table class="table table-striped">
		<thead>
			<tr>
		
			<th><font color="powderblue">Your Name</font></th>
			<th><font color="powderblue">Email</font></th>
			<th><font color="powderblue">Number</font></th>
			<th><font color="powderblue">Web Address</font></th>
		


			</tr>
		</thead>
		<tbody>
	 		<#list contacts as item>
				<tr>
					<td>${item.code}</td>
					<td>${item.name}</td>
					<td>${item.number}</td>
					<td>${item.web}</td>
					
					<td>
  							<button type="button" class="btn btn-default">
  							<a href="/view/${item.code}">View Contact</a>	
  							</button>
					
					</td>
				
				</tr>

			</#list>
		</tbody>	
	</table>

  </div>

  <div class="col-md-2"></div>
</div>

</body>
</html>
