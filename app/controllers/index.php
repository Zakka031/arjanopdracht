<?php
// Verbind met de database
$host = 'localhost'; // of je server IP
$db = 'jamin_b'; // je database naam
$user = 'root'; // je database gebruikersnaam
$pass = ''; // je database wachtwoord

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Voeg een nieuw land toe als het formulier is ingediend
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $naam = $_POST['naam'];
        $hoofdstad = $_POST['hoofdstad'];
        $continent = $_POST['continent'];
        $aantal_inwoners = $_POST['aantal_inwoners'];
        $postcode = $_POST['postcode'];

        $sql = "INSERT INTO Landen (Naam, Hoofdstad, Continent, AantalInwoners, Postcode) 
                VALUES (:naam, :hoofdstad, :continent, :aantal_inwoners, :postcode)";
        
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':naam', $naam);
        $stmt->bindParam(':hoofdstad', $hoofdstad);
        $stmt->bindParam(':continent', $continent);
        $stmt->bindParam(':aantal_inwoners', $aantal_inwoners);
        $stmt->bindParam(':postcode', $postcode);
        $stmt->execute();
        
        echo "Land succesvol toegevoegd!";
    }
    
    // Haal alle landen op uit de database
    $sql = "SELECT * FROM Landen";
    $stmt = $pdo->query($sql);
    
    // Toon de landen in een tabel
    echo "<h2>Landen van de Wereld</h2>";
    echo "<table border='1'>";
    echo "<tr><th>Naam</th><th>Hoofdstad</th><th>Continent</th><th>Aantal Inwoners</th><th>Postcode</th><th>Wijzig</th><th>Verwijder</th></tr>";
    
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo "<tr>";
        echo "<td>" . htmlspecialchars($row['Naam']) . "</td>";
        echo "<td>" . htmlspecialchars($row['Hoofdstad']) . "</td>";
        echo "<td>" . htmlspecialchars($row['Continent']) . "</td>";
        echo "<td>" . htmlspecialchars($row['AantalInwoners']) . "</td>";
        echo "<td>" . htmlspecialchars($row['Postcode']) . "</td>";
        echo "<td><a href='wijzig_land.php?id=" . $row['Id'] . "'>Wijzig</a></td>";
        echo "<td><a href='verwijder_land.php?id=" . $row['Id'] . "'>Verwijder</a></td>";
        echo "</tr>";
    }
    
    echo "</table>";
    
} catch (PDOException $e) {
    echo "Fout bij verbinden met de database: " . $e->getMessage();
}
?>

<h2>Nieuw land toevoegen</h2>
<form action="index.php" method="post">
    <label for="naam">Land Naam:</label>
    <input type="text" id="naam" name="naam" required><br>

    <label for="hoofdstad">Hoofdstad:</label>
    <input type="text" id="hoofdstad" name="hoofdstad" required><br>

    <label for="continent">Continent:</label>
    <input type="text" id="continent" name="continent" required><br>

    <label for="aantal_inwoners">Aantal Inwoners:</label>
    <input type="number" id="aantal_inwoners" name="aantal_inwoners" required><br>

    <label for="postcode">Postcode:</label>
    <input type="text" id="postcode" name="postcode" required><br>

    <input type="submit" value="Land Toevoegen">
</form>
