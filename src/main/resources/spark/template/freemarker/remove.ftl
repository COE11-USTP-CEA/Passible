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
  <div class="text-center">
    <h1>You are about to delete: ${item.name}</h1>
  </div>

<div class="row jumbotron">
  <div class="col-md-4"></div>
  <div class="col-md-4">
    
<h2>Item code: ${item.code}</h2>
<h2>Item Name: ${item.name}</h2>

<form  method="post" action="/delete">
<input type="hidden" name="code" class="form-control" id="item_code" value="${item.code}">
    <button type="submit" class="btn btn-default">
      Delete
    </button>
</form>



<div class="btn-group" role="group" aria-label="...">
  
    <button type="button" class="btn btn-default">
      <a href="/list">
        View items list
      </a>
    </button>
</div>

<a href="/list">Cancel</a>

  </div>
  <div class="col-md-4"></div>

</div>

</body>
</html>
  

