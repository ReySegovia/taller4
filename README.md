Table of contents
=================
<!--ts-->
   * [Descripcion](#Descripcion)
   * [Problema identificado](#Problema-identificado)
   * [Solución](#Solución)
   * [Arquitectura](#Arquitectura)
   * [Requerimientos](#Requerimientos)
   * [Instalación](#Instalación)
      * [¿Cómo instalar el ambiente de desarrollo?](#¿Cómo-instalar-el-ambiente-de-desarrollo?)
      * [¿Cómo ejecutar pruebas manualmente?](#¿Cómo-ejecutar-pruebas-manualmente?)
      * [¿Cómo implementar la solución en producción en un ambiente local?](#¿Cómo-implementar-la-solución-en-producción-en-un-ambiente-local?)
   * [Configuración](#Configuración)
   * [Uso](#Uso)
   * [Contribución](#Contribución)
      * [Guía de contribución](#Guía-de-contribución)
      * [Clonar repositorio](#Clonar-repositorio)
   * [Roadmap](#Roadmap)
<!--ts-->

# Descripcion
- El proyecto trata sobre un desarrollo de software en ambiente web para poder ofrecer a el departamento de compras, una manera de que puedan visualizar una lista de todos los proveedores que manejamos  y que puedan identificar de manera eficaz el contacto correspondiente para la negociación que se necesita pactar, toda esta información la obtendremos de una base de datos prefabricada, ¿que se espera de este proyecto?

- Desarrollar una interfaz para que el usuario pueda obtener y consultar una lista de proveedores.
- Mantener una base de datos para que podamos consultar de manera segura y eficazmente los proveedores y responsables de proyectos.

# Problema identificado
- Tener un informe con un margen de error mínimo en donde todos los impactados podrían acceder a ver las negociaciones directamente en una página web sin tener que abrir un archivo o manipularlo. Esto ayudaría para juntas directivas, e incluso encontrar que proveedor está generando pérdidas para el negocio.

# Solución
![](https://images.pexels.com/photos/265087/pexels-photo-265087.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1)

> **Crear proyecto web inicial y boceto en html** 4 días
Crear los bocetos iniciales del proyecto, estos bocetos nos ayudarán a tener una visión clara de la interfaz y la manera en la que se acomodaron los bloques de código.

>  **Consultar en la base de datos** 1 día
consultar de manera segura y eficazmente los proveedores y responsables de proyecto, la importancia de tener una base de datos actualizada es relevante y más cuando se trata de negociaciones.

>  **Limpiar y extraer la información necesaria** 6 días
Asegurarnos que la información esté correcta, realizar cambios solicitados, necesitamos de la misma manera que los datos estén limpios, que no contengan errores.

> **Enlazar el query con la aplicación web** 1 día
Escribir un query para consultar de la base de datos, una lista de todos los proveedores que se utilizan para el equipo de categorías en procurement, e integrarlo en código para poder mostrarlo en nuestro formulario html y pueda mostrar la información más actualizada cada que el usuario visite la página.

> **Integrar proyecto** 20 días
Coordinar todos los elementos del proyecto antes de realizar las pruebas, esto será de mucha ayuda para cuando se realicen las pruebas correspondientes el proyecto no sufra de muchos cambios.

> **Realizar pruebas** 10 días
Realizar la pruebas correspondientes de la aplicación para comprobar funcionalidad, etc..

> **Lanzar producción del proyecto** 2 días
Presentar oficialmente el proyecto terminado y listo para los usuarios.
                
----

# Arquitectura
- En la **arquitectura por capas** cada capa tiene una responsabilidad definida, una capa se encarga de la visualización de los datos y la interacción con el usuario, otra capa se encarga de la lógica de negocio y otra capa del acceso a la base de datos. Esta distribución de responsabilidades pone cierto orden a la organización del código y estructura de las aplicaciones. Las capas superiores dependen de las capas inferiores, ya sea en un modelo estricto donde la superior depende únicamente de la inmediatamente inferior o en un modelo más permisivo donde una capa superior puede depender de cualquiera de las inferiores.

![](https://user-images.githubusercontent.com/70732414/168432534-04d23722-f80f-48c9-886d-0f7e04a6722e.png)

# Requerimientos
1. Apache NETBEANS 12.6
2. Java 8
3. Git
4. MySQL 8.0.29
5. Apache tomcat
6. XAMPP

# Instalación
## ¿Cómo instalar el ambiente de desarrollo?
1. Para descargar el paquete de instalación de JDK necesitará crear una cuenta. Puede hacerlo en el siguiente enlace: https://profile.oracle.com/myprofile/account/create-account.jspx
2. Acceda al siguiente enlace y seleccione el paquete que es compatible con su sistema operativo: https://www.oracle.com/java/technologies/javase-jdk8-downloads.html
3. Inicie sesión para comenzar la descarga.
4. Una vez descargado, diríjase a la localización del paquete en su equipo (generalmente en el directorio “Descargas”) y ejecútelo como administrador haciendo clic derecho.
5. Inicie la instalación y espere su finalización.
6. Ingrese al siguiente enlace para descargar NetBeans 8.2: https://netbeans.org/downloads/old/8.2/
7. Una vez descargado, diríjase a la localización del paquete en su equipo (generalmente en el directorio “Descargas”) y ejecútelo como administrador haciendo clic derecho.
8. Inicie la instalación y espere a su finalización.

## ¿Cómo ejecutar pruebas manualmente?
- Luego de descargar el proyecto en tu ordenador, validamos que tenemos nuestro entorno de desarrollo, MySQL, Apache Tomcat, XAMPP, y utilizariamos nuestra propia base de datos para realizar pruebas y asegurarnos del funionamiento de la aplicación

## ¿Cómo implementar la solución en producción en un ambiente local?
1. Replicar base de datos en MySQL para poder consultar cualquier lista.
2. Crear credeciales para acceso a la base de datos y cambiar la configuración local en la pestaña "Conexion.java".
3. Asegurate de leer las variables definidas en código java para poder llamar a las variables de SQL, o en caso contrario, renombra correctamente las variables de tu base de datos en el código Java.

# Configuración
- Este proyecto solo necesita que tengas el servidor de apache tomcat encendido y funcionando, y la conexión a servidor de SQL corriendo, si persisten las dudas, puedes descargar un gestor como XAMPP para validar que estos estén corriendo por detrás.

# Uso
- Bienvenido a la aplicación de Supplier Negotiation!

	En esta página podrás consultar una lista de proveedores con los que negociamos actualmente, ya no tendrás que usar miles de archivos de excel compartidos entre diferentes ordenadores locales!
	Lo único que tenemos que hacer, es dar click al botón de consulta, y nos debería de arrojar siempre la lista más actualizada de proveedores en la lista.

# Contribución
## Guía de contribución
- Si te gustaría hacer mejoras a esta aplicación, puedes hacerlo al clonar el repositorio en tu local, sigue las instrucciones debajo...
	Luego de que termines con tus cambios, por favor crea una nueva branch y sube tus cambios en esta nueva branch con la siguiente lista de comandos.
	Me encargaré de revisar el pull request y validaré los cambios, si veo que todo está en orden procederé a hacer el merge con master.

```bash
git add . 
git commit -m "new changes in..."
git push origin branch_name
```

## Clonar repositorio
1. Abre la Terminal.
2. Cambia el directorio de trabajo actual a la ubicación en donde quieres clonar el directorio.
3. Escribe git clone, y luego pega la URL de github del proyecto.

```bash
$ git clone https://github.com/ReySegovia/taller4.git
```

# Roadmap
- Esta es una lista de futuras mejoras a implementar en este proyecto:
1. Descargar lista a excel
2. Añadir filtros para cuando tengamos muchos proveedores.
3. Añadir botones para cambiar de página y filtrar por 10, 20, o 50 elementos por página.
4. Añadir un autoayuda para introducir al usuario a la aplicación.

