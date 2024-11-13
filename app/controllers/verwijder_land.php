<?php
// Verbind met de database
$host = 'localhost';
$db = 'jamin_b';
$user = 'root';
$pass = '';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Haal de id van het land op
    if (isset($_GET['id'])) {
        $id = $_GET['id'];

        // Verwijder het land uit de database
        $sql = "DELETE FROM Landen WHERE Id = :id";
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->execute();

        echo "Land succesvol verwijderd!";
    } else {
        echo "Geen land geselecteerd!";
    }
} catch (PDOException $e) {
    echo "Fout bij verbinden met de database: " . $e->getMessage();
}
?>
