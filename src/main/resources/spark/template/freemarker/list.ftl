
<!DOCTYPE html>
<html>
 
<head>
<link rel="shortcut icon" href="http://potrezia.stacopa.com/img/favicon.png" type="image/png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="w3-black-theme.css">
<link rel="stylesheet" href="font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <title>${title}</title>


</head>
<body>
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
        <li class="active">
        	<a href="/submit">Add items
        		<span class="sr-only">(current)</span>
        	</a>
        </li>
        <li>
        	<a href="/list">Delete items</a>
        </li>

        <li>
        	<a href="/list">List Items</a>
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
			<th>Item Code</th>
			<th>Name</th>
			</tr>
		</thead>
		<tbody>
	 		<#list contacts as item>
				<tr>
					<td>${item.code}</td>
					<td>${item.name}</td>
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
				</tr>

			</#list>
		</tbody>	
	</table>

  </div>

  <div class="col-md-2"></div>
</div>

</body>
</html>
