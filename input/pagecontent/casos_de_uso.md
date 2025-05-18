
Si bien la SMART Guideline de Vigilancia Nacional de ESAVI intenta recomendar un proceso completo del tratamiento de los ESAVI, pasando por:

* Registro y Notificación de ESAVI
* Evaluación Inicial
* Investigación
* Evaluación del informe de investigación
* Validación y Complementación (por parte de los Referentes nacionales)
* Preparación del expediente del caso
* Preparación del informe de análisis de datos
* Evaluación de Causalidad

, la presente IG cubre solamente el Registro y Notificación de ESAVI, considerando que esta actividad podría realizarse de manera Online, a través de una interfaz web del mismo sistema de Vigilancia nacional de ESAVI, o por una aplicación adicional, capaz de funcionar Offline, y solo generar las transacciones hacia el nivel central cuando se conecte a la Internet.


### Registrar y Notificar un nuevo caso de ESAVI

Este caso de uso cubre el proceso de notificación de eventos adversos desde los puntos de atención de salud. Incluye:

* Captura de información básica del caso
* Registro en el sistema de vigilancia nacional para seguimiento.

La presente guía de implementación sugiere la comunicación estandarizada para la notificación de un nuevo ESAVI desde el punto de atención del paciente hacia un sistema nacional de vigilancia ESAVI que permita soportar el tratamiento de la información relacionada con el ESAVI desde su recepción hasta la determinación de la relación entre los síntomas y la vacunación.

Se sugiere la implementación de un formulario web para efectos de la Notificación de ESAVI, y con esto soportar la "Captura de información básica del caso".

También se sugiere considerar la AUTOMATIZACIÓN de la "Captura de información básica del caso", desde sistemas de información disponibles y confiables, para el propósito de describir el ESAVI y su entorno. Esto implica autocompletar el formulario, ya sea online (consultando otros sistemas online) u offline (almacenando información desde otros sistemas)

En ese contexto, es factible encontrar implementaciones de sistemas especializados en cada dominio de la salud digital.

La situación ideal es donde cada sistema cuente con mecanismos para compartir la información(por ejemplo, interfaces FHIR con sus respectivas Guías de Implementación asociadas). De esta manera, el sistema de vigilancia nacional de ESAVI podría automatizar la ingesta de los datos que requiera al momento de registrarse un nuevo ESAVI, haciendo la información fiable y congruente entre cada uno de los sistemas.

El registro en el sistema de vigilancia Nacional se ejecutaría bajo las transacciones FHIR declaradas en la presente IG.

