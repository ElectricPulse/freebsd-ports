--- lib/Conf.pm.orig	Thu Mar 31 10:30:48 2005
+++ lib/Conf.pm	Sat Jun 18 19:09:46 2005
@@ -70,24 +70,24 @@
 
 #$USERBDD � pour valeur le login d'un utilisateur pouvant se connecter
 #� la base de donn�e  'FACTURIER' sur le serveur MySQL
- #remplacer 'user' par le login d'un utilisateur ayant le droit d'utiliser
+ #remplacer '%%DBOWN%%' par le login d'un utilisateur ayant le droit d'utiliser
  #la base de donn�e 'facturier' sur le serveur MySQL
-my $USERBDD="user";
+my $USERBDD="%%DBOWN%%";
 
 
 #$MDPBDD contient la valeur du mot de passe de connection de l'utilisateur
  #$USERBDD au serveur MySQL
- #remplacer 'password' par le mot de passe du login de l'utilisateur
+ #remplacer '%%DBPWD%%' par le mot de passe du login de l'utilisateur
  #ci-dessus
-my $MDPBDD="password";
+my $MDPBDD="%%DBPWD%%";
  
 #base de donnes du facturier
 #vous n'aurez pas, normalement, besoin de modifier cette variable.
 my $BASEBDD = "FACTURIER";
 
 #serveur de base de donnees
-#remplacer "host" par le nom du serveur h�bergeant MySQL.
-my $HOSTBDD = "host";
+#remplacer "%%DBSERV%%" par le nom du serveur h�bergeant MySQL.
+my $HOSTBDD = "%%DBSERV%%";
 
 
 #driver de base de donnees
@@ -110,7 +110,7 @@
  #remplacer 'scriptalias' par le scriptalias du 'Facturier'
  #si scriptalias = fact alors
  #$CGIADR="/fact"; 
- $CGIADR="/ScriptAlias";
+ $CGIADR="/fact";
  
  
  #$BASEAD contient le chemin absolu du r�pertoire facturier sur le serveur 
@@ -118,14 +118,14 @@
  #remplacer 'chemin repertoire principale (facturier/)' par le chemin du repertoire
  #facturier : si le facturier est dans /var/www/html, alors :
  #$BASEAD ="/var/www/html/facturier";
- $BASEAD ="chemin repertoire principal (facturier)";
+ $BASEAD ="%%FACT_REP%%/";
 
  
  
  #$HTMLDOC contient le chemin de la commande htmldoc
  #si la commande htmldoc que vous d�sirez utiliser est dans "/usr/bin/" faire
  #$HTMLDOC="/usr/bin/htmldoc";
- $HTMLDOC="/usr/local/htmldoc-1.8.22/bin/htmldoc";
+ $HTMLDOC="%%LOCALBASE%%/bin/htmldoc";
 ###################################
 #finvariables serveur � configurer
 ##################################
@@ -142,7 +142,7 @@
  #$HTMLADRESSE indique au serveur web o� se trouve les pages html utilis�es par le facturier
  # par apport au DocumentRoot. Si vous avez install� le facturier dans le DocumentRoot
  #vous n'aurez pas besoin de modifier la valeur de $HTMLADRESSE
- $HTMLADRESSE='/html';
+ $HTMLADRESSE='/../facturier/html';
  $HTMLADRUNGI = "$HTMLADRESSE/UNGI";
  $HTMLADRUNGICONES = "$HTMLADRUNGI/icones";
  
