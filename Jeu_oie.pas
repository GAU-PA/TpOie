{Algorithme: Jeu_de_loie

//But: obtenir un jeu de l'oie qui demande a l'utilisateur le chiffre qu'il obtient lors d'un lancé de dès.
//Principe: Dans une boucle TANTQUE on implémente les différentes situations possibles avec des SI

//Entrée: La somme des dès lancé par l'utilisateur.
//Sortie: le nouvel emplacement du joueur ainsi que l'action qui en résulte.

CONST:
	depart <- 0 : entier;
	arrivée <- 66 : entier;
	mort <- 58 : entier;

VAR:
	De1, De2, place, jetDes : entier

DEBUT:
	//Initialisation
	De1 <- 1;
	De2 <- 1;
	place <- 0;
	jetDes <- 2;

	TANT QUE (place <> arrivée) FAIRE
		ECRIRE "Entrez votre premier dè: ";
		LIRE De1;
		SI ((De1>=1) ET (De1=<6)) ALORS
			ECRIRE "Entrez votre second dè: ";
			LIRE De2;
			SI ((De2>=1) ET (De2=<6)) ALORS
				jetDes <- De1 + De2;
				place <- place + jetDes;
				SI (place = mort) ALORS
					ECRIRE place;
					ECRIRE "Vous etes mort, retour au depart";
					place <- depart;
				SINON
					SI ((place MOD 9 = 0) ET (place <> 63) ALORS
						ECRIRE place;
						ECRIRE "Vous avancez de ", jetDes," cases supplementaires";
						place <- place+jetdes;
						Ecrire place;
					SINON
						SI (place > 66) ALORS
							ECRIRE "Vous avez dépassé la case victoire";
							place <- (arrivée-(place+jetDes-arrivée));
							ECRIRE place;
						FINSI
					FINSI
				FINSI
			FINSI
		FINSI
	FINTANTQUE
	ECRIRE "Felicitation ! Vous avez gagné !"
FIN.}

PROGRAM Jeu_de_loie;

CONSt
	depart = 0 ;
	arrivee = 66 ;
	mort = 58 ;

VAR
	De1, De2, place, jetDes : integer;

BEGIN

	//Initialisation
	De1 := 1;
	De2 := 1;
	place := 0;
	jetDes := 2;

	WHILE (place <> arrivee) DO
	BEGIN
		writeln('Entrez votre premier de: ');
		read(De1);
		IF ((De1>=1)AND(De1<=6)) THEN
		BEGIN
			writeln('Entrez votre second de: ');
			read(De2);
			IF ((De2>=1)AND(De2<=6)) THEN
			BEGIN
				jetDes := (De1 + De2);
				place := (place + jetDes);
				writeln('Vous etes case ',place);
				IF (place = mort) THEN
				BEGIN
					writeln('Vous etes case ',place);
					writeln('Vous etes mort, retour au depart');
					place := depart;
				END
				ELSE
				BEGIN
					IF ((place MOD 9 = 0)AND(place <> 63)) THEN
					BEGIN
						writeln('Vous avancez de ', jetDes,' cases supplementaires');
						place := (place+jetdes);
						writeln('Vous etes case ',place);
					END
					ELSE
					BEGIN
						IF (place > arrivee) THEN
						BEGIN
							writeln('Vous avez depasse la case victoire');
							place := (arrivee-(place+jetDes-arrivee));
							writeln('Vous etes case ',place);
						END;
					END;
				END;
			END;
		END;
	END;
	writeln('Felicitation ! Vous avez gagne !');
	readln;
END.