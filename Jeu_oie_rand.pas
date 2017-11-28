PROGRAM Jeu_de_loieRand;

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

	RANDOMIZE;
	WHILE (place <> arrivee) DO
	BEGIN
		writeln('Premier lancer de de: ');
		readln;
		De1:=1+random(6);
		writeln(de1);
		IF ((De1>=1)AND(De1<=6)) THEN
		BEGIN
			writeln('Deuxième lancer de de: ');
			readln;
			De2:=1+random(6);
			writeln(De2);
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