 <?php
include 'D:\wamp64\www\Projet_web\core.php';

// On termine une session éventuelle
session_abort();

// Connexion PDO
$pdo = new PDO('mysql:host=localhost;dbname=défi;charset=utf8', 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

// Récupération et validation des données POST
$genre = htmlspecialchars($_POST['genre'] ?? '', ENT_QUOTES, 'UTF-8');
$nom   = htmlspecialchars($_POST['nom'] ?? '', ENT_QUOTES, 'UTF-8');
//$categorie = filter_input(INPUT_POST, 'categorie', FILTER_SANITIZE_STRING);

// Si le formulaire a été soumis
$resultats = [];

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    if ($genre && $nom) {

        // Requête SQL préparée
        $requete = $pdo->prepare("
            SELECT id, genre, categorie, nom, quantite, prix
            FROM shop
            WHERE genre = :genre AND nom = :nom
            ORDER BY prix
        ");

        // Exécution avec paramètres sécurisés
        $requete->execute([
            'genre' => $genre,
            'nom'   => $nom
        ]);

        // Récupération des résultats
        $resultats = $requete->fetchAll(PDO::FETCH_ASSOC);

    } else {
        echo "Les champs 'genre' et 'nom' sont requis.";
    }
}

$_TITRE_PAGE = 'PlatiniumShop';
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <link rel="stylesheet" href="defi.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $_TITRE_PAGE ?></title>
</head>

<body>

<div class="container"> 
    <div>
        <h2>Bienvenue sur Platinium !</h2><br><br><br>
    </div>

    <div>
        <h3>Trouver le produit de votre choix</h3><br><br>

        <form id="Shop" method="POST">
            <label for="genre">Genre :</label>
            <input type="text" id="genre" name="genre" required><br><br><br><br>

            <label for="categorie">Catégorie :</label>
            <input type="text" id="categorie" name="categorie"><br><br><br>

            <label for="nom">Nom :</label>
            <input type="text" id="nom" name="nom" required><br><br><br><br>

            <button style='background-color:green' name='recherche_produit' value='1' type='submit'>
                Rechercher
            </button>
        </form>
    </div>

    <h3>Liste des produits demandés</h3>
    <div class="flex">

        <?php
        if (!empty($resultats)) {

            foreach ($resultats as $row) {
                $genre     = htmlspecialchars($row['genre']);
                $nom       = htmlspecialchars($row['nom']);
                $categorie = htmlspecialchars($row['categorie']);
                $prix      = number_format((float)$row['prix'], 2, ',', ' ');
                $quantite  = (int)$row['quantite'];

                echo "<div class=\"game\">";
                echo "<h3>{$nom}</h3>";
                echo "<p>Catégorie : {$categorie}</p>";
                echo "<p>Quantité disponible : {$quantite}</p>";
                echo "<p>Prix : {$prix} €</p>";
                echo "<button style='background-color:green'>Payer</button>";
                echo "</div>";
            }

        } else {
            echo "<p>Aucun produit trouvé.</p>";
        }
        ?>

    </div>
</div>

<footer>
    <!-- Rien à fermer ici car PDO se ferme automatiquement -->
</footer>

</body>
</html>
