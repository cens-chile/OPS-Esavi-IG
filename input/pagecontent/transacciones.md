
El Digital Adaptation Kit de Vigilancia Nacional de ESAVI propone una aplicación centralizada a nivel nacional para la gestión de los casos de ESAVI.
Como transacciones estandarizadas, se propone la incorporación de interfaces FHIR para ejecutar las labores de Notificación de ESAVI (cuando un centro de salud recibe un caso ESAVI, lo registra en una aplicación local, y esta luego notifica y entrega todos los datos correspondientes al nivel centralizado). Búsqueda de ESAVI previamente registrados y su correspondiente lectura de todos los detalles del ESAVI, además de la actualización cuando se necesita incorporar más datos o actualizar datos existentes.

Todas estas operaciones están descritas a continuación:

## Notificar un nuevo ESAVI

Este caso de uso cubre el proceso de notificación de eventos adversos desde los puntos de atención de salud. Incluye:
Captura de información básica del caso y validación inicial.
Escalamiento a una investigación más detallada si el evento cumple criterios predefinidos.
Registro en el sistema de vigilancia nacional para seguimiento.

<div align="center" ><img src="notificacionESAVI.png" alt="Notificación Nuevo ESAVI"></div>

## Buscar ESAVI

En el momento que un usuario (Notificador o Punto Focal Institucional de ESAVI) requiera registrar o editar un caso de ESAVI, se ejecutaría previamente la operación de búsqueda de ESAVI, ya sea para asegurar que no exista previamente un registro de ESAVI para el mismo evento de vacunación, o para encontrar el ESAVI que se requiere editar o incorporar más información.

Esta operación trae implícita la operación de búsqueda de pacientes.

<div align="center" ><img src="buscarESAVI.png" alt="Búsqueda de ESAVI"></div>


## Leer ESAVI

Para cada uno de los propósitos de los participantes del procesamiento de ESAVI será necesario que estos puedan leer los datos de un ESAVI. Esta operación es posterior a la búsqueda, y permite, contando ya con el identificador del ESAVI, leer la totalidad de la información relacionada.

<div align="center" ><img src="leerESAVI.png" alt="Leer ESAVI"></div>


## Actualizar ESAVI

Un ESAVI a lo largo de su procesamiento, recibirá nueva información que lo complemente. Esta información se incorporará a través de las transacciones de actualización, donde el usuario, de manera genérica, buscaría al paciente, sus casos, leería el caso correspondiente, y luego le incorporaría más datos mediante la actualización

<div align="center" ><img src="actualizarESAVI.png" alt="actualizar ESAVI"></div>
