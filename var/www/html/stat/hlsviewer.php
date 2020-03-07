<html>
<head>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>

</head>

<body>

<?php 
ini_set("allow_url_fopen", 1);
$json = file_get_contents('http://localhost:5080/LiveApp/rest/v2/broadcasts/list/0/10');
echo $json;
?>


</body>

</html>
