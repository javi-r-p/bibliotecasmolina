## **Red Municipal de Bibliotecas de Molina** es una aplicación web programada en PHP como proyecto de fin de grado del ciclo formativo de grado superior en Administración de sistemas informáticos en red.\
La aplicación será desarrollada por dos alumnos (Javier Rodríguez y Joaquín Campoy) en un plazo de tres meses aproximadamente.\
Esta aplicación tiene acceso a una base de datos, donde se registrarán los préstamos, sanciones, libros, autores y ejemplares. En dicha base de datos también se encontrarán las cuentas de los socios y de los empleados de la red de blbliotecas.\
Para la base de datos se utilizará el sistema gestor de bases de datos _MySQL_.\
El sistema de correo funcionará con _<<SERVIDOR>>_.\
El servidor web será _apache2_, con _PHP_ instalado.\
La aplicación web estará situada en un servidor, al que los clientes accederán desde sus respectivos navegadores web.\
\
Esta aplicación permite la búsqueda y reserva de libros por parte de los socios, así como la gestión de los préstamos por parte de los empleados. Se desarrollará una aplicación web para los socios, y otra para los empleados.\
Las conexiones al servidor se realizarán siempre mediante _HTTPS (HTTP seguro)_, para ello, se creará un certificado autofirmado, por lo que el navegador mostrará una advertencia respecto al certificado.\
**Portal socios:**\
    **1. Búsqueda general y avanzada:** en la búsqueda avanzada se podrá filtrar por idioma, área, autor y título.\
    **2. Reserva de libros:** los socios podrán reservar libros que quieran coger prestados y no estén disponibles en el momento. Si el socio está sancionado no podrá reservar libros hasta fin de la sanción.\
    **3. Autoregistro:** los socios que no estén dados de alta en la aplicación podrán registrarse a sí mismos, siempre que no tengan una cuenta creada previamente.\
    **4. Gestión de los datos personales:** los socios podrán modificar datos personales como el nombre y la dirección de correo electrónico. El DNI y el número de socio no podrá modificarse.\
    **5. Darse de baja:** los socios podrán dejar de ser socios de la red de bibliotecas en cualquier momento. Esto implica la eliminación de todos sus préstamos y sanciones.\
\
**Portal empleados:**\
    **1. Gestión de los préstamos:** prestar un ejemplar, renovar el préstamo y finalizar el préstamo.\
    **2. Gestión de los empleados:** los empleados que cuenten con permisos de administración podrán añadir nuevos empleados. Siempre habrá al menos un usuario con permisos de administración. Los administradores también podrán eliminar empleados (acción no recomendada) y bloquear las cuentas de los empleados (en caso de que un empleado no acuda a su puesto por ejemplo, por baja médica).\
    **3. Registrar socios:** los empleados también podrán dar de alta nuevos socios.\
    **4. Gestionar el catálogo:** los empleados con permisos de administración podrán añadir nuevos libros y/o ejemplares al catálogo, así como eliminarlos.\
\
**Otros:**\
    **1. Sanciones automáticas:** las sanciones se aplicarán de forma automática. El socio será sancionado por cada día de retraso en la devolución, empezando la sanción a partir del octavo día de retraso.\
    **2. Notificaciones por correo electrónico** los socios recibrán notificaciones acerca de:\
        **a. Recordatorios de devolución de ejemplares:** los socios recibirán un recordatorio por correo electrónico para devolver su préstamo una semana y un día antes del fin del plazo de devolución.\
        **b. Información acerca del préstamo:** los socios recibirán un tique por correo electrónico que contendrá el título del ejemplar, la fecha en que se realizó el préstamo y la fecha en la que este finaliza.\
        **c. Notificación de sanción:** los socios recibirán una correo el día en que la sanción comience, notificándoles que han sido sancionados y la duración de dicha sanción. También recibirán una notificación acerca del fin de la sanción el día que esta finalice.\
        **d. Mensaje de bienvenida:** los socios recibirán un correo electrónico de bienvenida cuando hayan sido registrados en la aplicación (bien por un empleado o por sí mismos), en el que se especificará la normativa acerca de los préstamos y el uso de los ejemplares, junto con algunas recomendaciones. Estas recomendaciones se basarán en los cinco libros más prestados en los últimos treinta días.\
