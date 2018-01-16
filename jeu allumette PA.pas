 PROGRAM Jeu_Dallummette;

 USES crt, sysutils;



 CONST

	 LOSE : INTEGER = 0;
	
 VAR

	 perdu : BOOLEAN; 			
	 somme, nb1 : INTEGER;

 BEGIN

	 clrscr;

	 perdu := FALSE;
	 somme := 21;

	 REPEAT

	 Writeln('Joueur , veuillez saisir le nombre dallumette à prendre entre 1  et 3 ');
	 Readln (nb1);

	 IF ( nb1 >= 1 ) AND ( nb1 <= 3 ) THEN
	     
	     BEGIN
	     somme := somme - nb1;

	     IF ( somme = LOSE ) THEN

	         BEGIN
	         Writeln(' Joueur a perdu ');
	         perdu := TRUE;
	         END

	     ELSE

	         Writeln(' La somme des allumettes est de ', somme );
         END

     ELSE

         Writeln('Veuillez choisir un nombre entre 1 et 3');

     UNTIL ( perdu = TRUE );

END.
