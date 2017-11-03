<html>
<body>
<?PHP
$servername = "localhost";
$user = "root";
$password = "";
$database = "bibioteka";


	$id = $_POST["id"];
	$imie1 = $_POST["imie1"];
	$nazwisko2 = $_POST["nazwisko2"];
	$pesel3 = $_POST["pesel3"];
	$telefon4 = $_POST["telefon4"];

//Connect
$conn = mysqli_connect($servername, $user, $password, $database);
if (!$conn) {
	die("Connect failed:" . mysqli_connect_error());
}
echo "Connected successfully";

$sql = 'INSERT INTO osoba (id_osoby , imie, nazwisko, pesel, telefon)
VALUES ('.$id.','.$imie1.', '.$nazwisko2.', '.$pesel3.','.$telefon4.')';

if (mysqli_query($conn, $sql)) {
    echo ("New record created successfully<br>");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

$sql = "SELECT id_osoby, imie, nazwisko, pesel, telefon FROM osoba";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        echo ('id:'  . 
		$row['id_osoby'].
	' - imie1: ' . $row['imie'].		
	' - Nazwisko2: ' . $row['nazwisko'].
	' - pesel:3 ' . $row['pesel'].
	'- telefon4: ' . $row['telefon']. '<br>');
    }
} else {
    echo "0 results";
}

mysqli_close($conn);

?>
<form>
</a><input type="button" value="Powrót" onclick="parent.location.href='index.php'"

</form></a>
</body>
</hmtl>