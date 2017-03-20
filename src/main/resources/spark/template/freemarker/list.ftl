
<!DOCTYPE html>
<html>
 
<head>
<<<<<<< HEAD
<link rel="shortcut icon" href="http://potrezia.stacopa.com/img/favicon.png" type="image/png">
=======
	<link rel="shortcut icon" href="http://www.clipartbest.com/cliparts/Kcn/eM6/KcneM6q9i.png" type="image/png">
>>>>>>> 15b786590c818967770d0cf7a74adb94a43e4ac1
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="w3-black-theme.css">
<link rel="stylesheet" href="font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <title>${title}</title>


<<<<<<< HEAD
</head>
<body>
=======
</head> 
<body style="background-color:gray;">
>>>>>>> 15b786590c818967770d0cf7a74adb94a43e4ac1
<!-- Navbar -->
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
<<<<<<< HEAD
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
=======
        <span class="icon-bar"></span> 
        <span class="icon-bar"></span>
      </button>
      <a href="/home"><img src="\img\telephone.png" height="40" width="40" alt="">Passible</a>
>>>>>>> 15b786590c818967770d0cf7a74adb94a43e4ac1
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active">
<<<<<<< HEAD
        	<a href="/submit">Add items
=======
        	<a href="/submit">Add Contact
>>>>>>> 15b786590c818967770d0cf7a74adb94a43e4ac1
        		<span class="sr-only">(current)</span>
        	</a>
        </li>
        <li>
<<<<<<< HEAD
        	<a href="/list">Delete items</a>
        </li>

        <li>
        	<a href="/list">List Items</a>
=======
        	<a href="/post">Delete Contact</a>
        </li>

        <li>
        	<a href="/list">View Contact</a>
>>>>>>> 15b786590c818967770d0cf7a74adb94a43e4ac1
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
<<<<<<< HEAD
			<th>Item Code</th>
			<th>Name</th>
=======
			<th>Your Name</th>
			<th>Email</th>
			<th>Number</th>

>>>>>>> 15b786590c818967770d0cf7a74adb94a43e4ac1
			</tr>
		</thead>
		<tbody>
	 		<#list contacts as item>
				<tr>
					<td>${item.code}</td>
					<td>${item.name}</td>
<<<<<<< HEAD
					<td>
  							<button type="button" class="btn btn-default">
  							<a href="/view/${item.code}">Show</a>	
  							</button>
						</div>
					</td>
					<td>
  							<button type="button" class="btn btn-default">
  							<a href="/delete/${item.code}">Delete</a>	
  							</button>
					</td>
=======
						<td>${item.number}</td>
					
					<td>
  							<button type="button" class="btn btn-default">
  							<a href="/view/${item.code}">View Contact</a>	
  							</button>
						</div>
					</td>
				
>>>>>>> 15b786590c818967770d0cf7a74adb94a43e4ac1
				</tr>

			</#list>
		</tbody>	
	</table>

  </div>

  <div class="col-md-2"></div>
</div>

</body>
</html>
