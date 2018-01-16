PROGRAM Jeu_Dallummette2;

 USES crt, sysutils;



 CONST
     TirageMax : INTEGER = 3;
     TirageMin : INTEGER = 0;
	 LOSE : INTEGER = 0;
	
 VAR

	 perdu : BOOLEAN; 			
	 somme, nb1 : INTEGER;

 BEGIN

	 clrscr;

	 perdu := FALSE;
	 somme := 21;

	 REPEAT

	     BEGIN

	     Writeln('Joueur , veuillez saisir le nombre dallumette à prendre entre 1  et 3 ');
	     Readln (nb1);

	     IF ( nb1 >= 1 ) AND ( nb1 <= 3 ) THEN
	
	         BEGIN
	         somme := somme - nb1 ;

	         IF ( somme = LOSE ) THEN

	             BEGIN

	             Writeln(' Joueur a perdu ');
	             perdu := TRUE;
	             END

	         ELSE
                 BEGIN
	             Writeln(' La somme des allumettes est de ', somme );
                 
                 Writeln('Tour de lordinateur');
                 somme := somme - RANDOM(TirageMax);


                     IF ( somme = LOSE ) THEN

                         BEGIN
                         Writeln('Ordinateur a perdu');
                         perdu := TRUE;
                         END

                     ELSE

                         Writeln('La somme des allumettes est de ', somme)
                 END 
             END
         ELSE

                 Writeln('Veuillez choisir un nombre entre 1 et 3')
         END

     UNTIL ( perdu = TRUE );

END.







