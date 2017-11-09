<html>
<body>
<?PHP
$servername = "localhost";
$user = "admin";
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
VALUES ("'.$id.'","'.$imie1.'", "'.$nazwisko2.'", "'.$pesel3.'","'.$telefon4.'")';

if (mysqli_query($conn, $sql)) {
    echo ("New record created successfully<br>");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);

?>
<form>
</a><input type="button" value="Powrót" onclick="parent.location.href='index.php'"

</form></a>
</body>
</hmtl>