<!DOCTYPE html>
<html>
<head>
	<title>Exercice 2</title>
	<meta charset="utf-8">
</head>
<body>

	<h1>Formaulaire d'enregistrement</h1>

	<div>
		<?php 

		//conecion à la base de données

		try
		{
		// On se connecte à MySQL
		$bdd = new PDO('mysql:host=localhost;dbname=service', 'root', '');
		}
		catch(Exception $e)
		{
		// En cas d'erreur, on affiche un message et on arrête tout
		die('Erreur : '.$e->getMessage());
		}

			if (isset($_POST['valider']))
			 {
				$nom=$_POST['nom'];
				$prenom=$_POST['prenom'];
				$sexe=$_POST['sexe'];
				$service=$_POST['service'];
				$embauche=$_POST['embauche'];

				  $req = $bdd->prepare('INSERT INTO service(nom,prenom,sexe,
      service,embauche) VALUES(:nom,:prenom,:sexe,:service,:embauche)');
      $req->execute(array(
      'nom' => $nom,
      'prenom' => $prenom,
      'sexe'=>$sexe,
      'service'=>$service,
      'embauche' => $embauche));
           echo "<p style='color:green; font-size:25px;'> ENREGISTRER</p>";
			}

		?>
	</div>

	<form action="index.php" method="POST">
		<label>Nom :<input type="text" name="nom" placeholder="Nom..."></label><br><br>
		<label>Prénom:<input type="text" name="prenom" placeholder="Prénom..."></label><br><br>
		<label>Sexe :<input type="radio" name="sexe" value="Féminin">Féminin <input type="radio" name="sexe" value="Masculin" >Masculin</label><br><br>
		<label>Service</label>
		<select name="service">
			<option value="">Selectionner un service</option>
			<option value="Service Informatique">Service Informatique</option>
			<option value="Service Commercial">Service Commercial</option>
			<option value="Service Maintenant & Réseaux">Service Maintenant & Réseaux</option>
		</select>
		<br><br>
		<label>Date d'embouche :<input type="date" name="embauche"></label>
		<br><br>
		<input type="submit" name="valider" value="Enregistrer">
	</form>

</body>
</html>