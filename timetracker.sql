-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: timetracker
-- ------------------------------------------------------
-- Server version	5.1.49-1ubuntu8.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` text NOT NULL,
  `duration` float NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (21,'2013-09-21 14:16:22','tomando capturas de pantalla del menu y de search.\n',0,1),(20,'2013-09-18 13:33:08','Haciendo que la categoria que contiene el producto buscado se muestre antes que las demás. Viendo por que motivo no se muestra el boton del shopping cart. ',0,3),(19,'2013-09-18 13:15:59','Arreglando el puto teamviewer',1,3),(28,'2013-09-26 01:08:42','Tratando de arreglar la alineacion de los comboBox de la cantidad de items pedidos en la aplicacion android. Achicando el EditText de la SearchActivity. Viendo como poner EditText para que sean multilinea',1.53127,3),(27,'2013-09-25 22:51:22','Rediseño jquery-mobile para Web y App Moviles',0.0220669,2),(29,'2013-09-26 13:02:32','Achicando el texto, arreglando layout de lista de productos. Alineando spin button',2.013,3),(30,'2013-09-26 18:05:38','Arreglando el buildpath del proyecto.. se daño x algun motivo. Se daño el proyecto en el puto sistema de archivos encriptado de linux, otra vez mas. Nunca usen ext4 encriptado. Gracias a dios estaba en el SVN. Haciendo nuevo checkout. \nBotones quedaron alineados a la derecha.',5.11815,3),(31,'2013-09-26 20:46:40','bueno, en principio el login ya esta, via facebook. no se cuantas horas meti ahi pero fueron bocha.\ntenog que acordarme siempre antes de comenzar a laburar, de abrir esta cosa.. tendrias que hacerme un plugin para el XCode que se inicie el contador cada vez que se levanta el IDE, asi es mas facil y no tengo que cordarme de prenderlo yo, bueno.\naver si trakea mis huevos esta cosa..\n',0.0244646,1),(32,'2013-09-26 20:51:49','se paro solo a las 3 30 no se que le paso al contador\n',0.0850994,1),(33,'2013-09-26 20:58:12','bueno, ahora entre desde otra ventana para ver si anda mejor y no se cuelga el reloj\n..',0.0991488,1),(34,'2013-09-26 20:58:12','bueno, ahora entre desde otra ventana para ver si anda mejor y no se cuelga el reloj\n..',0.0991704,1),(35,'2013-09-26 20:58:12','',0.000124203,1),(36,'2013-09-26 20:58:30','esta garompa se cuelga a cada rato, salta un popup, no se que quiere.\n',0.00483579,1),(37,'2013-09-26 21:13:55','renombrando unas carpetas del framework de facebook, que se usan de libreria para el login.',0.256743,1),(38,'2013-09-26 21:18:27','me fui a calentar agua para el mate',0.0756578,1),(39,'2013-09-26 21:18:28','me fui a calentar agua para el mate',0.0757444,1),(40,'2013-09-28 01:43:16','Sigo tratando de alinear la lista de productos de una store, se ve para el culo.\nY el boton de agregar a carrito no aparece.. Pude arreglar la pantalla de la lista de productos, aunque cuando muestra el nombre todavia no se como ponerlo. No pude hacer el multiline. Estuve viendo sobre estilos, probe un holo style generator, pude ponerle los colores de fuccia turquesa, con colores gris bien claro de fondo y barras gris ocuro.. El style no compila, quizas haga rollback y siga en otro branch',2.62556,3),(41,'2013-09-28 17:08:16','agregando tabla de opciones de productos a la base de datos, y tratando de hacer que me compilen los nuevos estilos.-Reunion x hangouts Envie mail con la base de datos',1.22786,3),(42,'2013-09-29 14:50:07','leyendo bases de datos, couchdb , mongodb, nosql. Necesitamos mejorar la eficiencia de las queries. Es un desastre la performance del webservice. Hay plugines para mysql, para crear \"geospatial index\", para tablas que guardan informacion geografica..',1.84661,3),(43,'2013-09-30 20:50:39','Arreglando la compilacion de los estilos de la app android, appcompat7 libreria, leyendo sobre rethinkDB.. viendo temas de performance, benchmark contra mysql.. etc\nProbando RETHINKDB, haciendo el build, de C++ . Los estilos acaban de compilar los hijos de puta.',3.95753,3),(44,'2013-10-01 17:35:43','Arreglando la compilacion de los estilos que hice con el generador\nhttp://jgilfelt.github.io/android-actionbarstylegenerator/\n\n\nProblemas integrando appcompat-v7 que es requerido por el codigo generado\n\nhttps://github.com/jgilfelt/android-actionbarstylegenerator/issues/72\n\n\nareglando workspace para seguir desarrollando. Despues sigo mirando los estilos.\n\nCompilando rethinkDB para hacer pruebas.\n',5.06134,3),(45,'2013-10-01 21:21:50','Sigo desarrollando la app: seteando visibilidad a GONE en el boton addToCartbtn\ncuando el activity ShowStoreActivity muestra categorias.\n\nEstoy probando MongoDB. Segun benchmarks que veo tiene mucha mejor performance que mysql, voy a tratar de migrar nuestra base de datos a eso. Para ver si puedo ejecutar mejores queries. Soporta muchas computadoras, tiene muy buenas herramientas y comunidad. Usa formato BSON que es un json serializado de manera binaria. \n\nRegistrando dominio, alacarta.com es de onlydomain, \nalacarta.com.ar en proceso de registracion\n\n\nArreglando layout de los items de lista de productos\n\nInstale mongodb, viendo como arrancarlo, como configurarlo',3.76846,3),(46,'2013-10-02 12:44:04','Arreglando RatingBar, para que muestre 5 estrellas. ',0.523081,3),(47,'2013-10-02 18:02:52','Haciendo que el ListView de la lista de productos se muestre en rectangulos pequeniamente separados',1.71953,3),(48,'2013-10-02 20:23:37','Arreglando estilos de los resultados de busqueda de las stores. Espacio intermedio entre cada item. Arreglando el model de los search tags para hacer un adapter que muestre el rank del tag y cambios en el style.',2.32418,3),(49,'2013-10-03 03:04:37','Probando el time traker desde ios7',0.0110664,1),(50,'2013-10-03 15:46:56','Arreglando cuando muestra los tags de busqueda. Para cambiar la tipografia y el color de la fuente hay que crear un TagAdapter, ya que con el ArrayAdapter<String> comun no se puede.',0.26777,3),(51,'2013-10-03 17:33:51','Tag list arreglada.',1.03216,3),(52,'2013-10-03 20:59:40','poniendo background de la ListView de las stores en negro, asi se ven con espacio.\nProgramando boton de addToCart, generando una Order, que tiene id de producto y cantidad. A puntode mostrarla en el ShoppingCartActivity',3.10626,3),(53,'2013-10-04 15:47:31','Arreglando el layout de ShoppingCartActivity. Usando RelativeLayout. Mostrando los productos seleccionados en el ShoppingCartActivity.\nEl chat volvio a funcionar, el pedido es realizado a la cuenta de chat del destinatario.',3.29127,3),(54,'2013-10-05 19:26:09','Arreglando el ListAdapter del shopping cart que no muestra los elementos',5.10147,3),(55,'2013-10-05 23:00:34','Agregando opcion de poner departamento en el shoppingCartActivity. Y tratando de arreglar el ListView para que muestre los elementos del carrito',1.20868,3),(56,'2013-10-06 17:34:57','agregando \"opciones\" a la tabla de productos',0.979797,3),(57,'2013-10-06 18:54:11','Save and load shipping addresses',1.32049,3),(58,'2013-10-07 00:42:58','Save and load shipping addresses from shopping cart.',5.80862,3),(59,'2013-10-07 15:18:56','Arreglando shipping address.',1.50121,3),(60,'2013-10-07 17:27:44','Espera de confirmacion de orden de compra, una vez hecha la order se deshabilita el boton Order, para que no se clickee muchas veces.',1.53772,3),(61,'2013-10-08 17:44:35','Arregle SearchResult, distancia entre los tags, Agregue redireccion a newsactivity.',2.5602,3),(62,'2013-10-09 15:03:41','Incorporando los logos en el proyecto',0.00693537,2),(63,'2013-10-12 16:12:57','Query que devuelve lista de stores mas cercanas con paginacion. \r\nBoton de cercania en la aplicacion. Agregue checkbox para ordenae resultados por precio. Por distancia. Mejora del layout del SearxhActivity.\r\n',4,3),(64,'2013-10-12 16:12:57','Query que devuelve lista de stores mas cercanas con paginacion. \r\nBoton de cercania en la aplicacion. Agregue checkbox para ordenae resultados por precio. Por distancia. Mejora del layout del SearxhActivity.\r\n',4,3),(65,'2013-10-14 19:22:09','Poniendo el stack de notificaciones en el servicio Updates.\nEl NewsActivity obtiene las notificaciones de chat enviadas por el servicio Updates!',1.70828,3),(66,'2013-10-15 15:31:57','Haciendo que la NewsActivity, muestre la notificacion de acuerdo al layout correspondiente. Actualmente la recibe.',1.4739,3),(67,'2013-10-16 13:05:39','Intentando que se muestre la noticia en el NewsLayout',2,3),(68,'2013-10-17 01:22:02','Intentando mostrar la notificacioon en la news activity, el parseo y la creacion de la instancia de la notificacion del tipo correspondiente fallaba. Ahora se crea.\r\nTodavia no se puede mostrar, al igual que shopping cart activity.',4,3),(69,'2013-10-17 01:23:31','Al final descubri elmotivo por el cual la informacion del shoppingcart activity no se mostraba. Ahora se muestra bien',2.3,3),(70,'2013-10-17 18:44:52','Carrito de compras',0.00380676,2),(71,'2013-10-18 14:23:25','Arreglando layuot de elemento de lista de ShoppingCartActivity.\r\n\r\nProblemas con la lentitud al teamviewer.\r\n\r\nPerdida de informacion, se apago la laptop.',4,3),(72,'2013-10-19 19:13:09','',4.07377,1),(73,'2013-10-19 19:13:11','',0.000336129,1),(74,'2013-11-04 11:08:53','Robando informacion de la base de justeat.it . \r\nArreglando el json del celular para adecuarlo al formato del ivr. ',4,3),(75,'2013-11-05 22:58:57','Robando la base de datos justeat.it',11.8408,3),(76,'2013-11-05 22:58:57','Robando la base de datos justeat.it',11.8408,3),(77,'2013-11-06 18:47:27','Crawling de justeat.it ',7,3),(78,'2013-11-07 18:51:29','Corriendo crawling. Los datos se insertan bien en mongodb con el formato de stores nuestro.',4,3),(79,'2013-11-09 14:37:16','Crawling de pedidosya a mongoDB completo.',8,3),(80,'2013-11-24 22:42:21','Arregle las imagenes que no cargaban por tener URL con acentos. Convierte partes de la url a UTF-8 para cargar la imagen. Corriendo el crawler.\nArregle error de conversion de string del resource file que aparecia todo el tiempo en los scrolls. 11-24 12:39:52.005: W/Resources(26826): Converting to string: TypedValue{t=0x12/d=0x0 a=3 r=0x7f04002a}\n\n\nCreado una cuenta jabber para todos los restaurantes en un ruby script.',6.93751,3),(81,'2013-12-01 19:51:40','en el ipad se tilda el timer..\ncomo dije.. retomando luego de 1 mes que me chupadon la mente cuando entre a un proyecto con news tecnologies.\nbueno ya mas o menos entiendo de que va, asi que retomo SmartBands!!\n',0.0202527,1);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) NOT NULL,
  `password` varchar(8) NOT NULL,
  `url` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mauricio','mauricio','http://m.c.lnkd.licdn.com/media/p/5/000/277/3db/3b50ba6.jpg'),(2,'lucio','lucio','http://m.c.lnkd.licdn.com/media/p/3/000/0b2/303/0e321f5.jpg'),(3,'pabloborda','pijaloca','http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/3/000/045/25a/2a91428.jpg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-23 11:56:38
