## Introducción

La Guía de Implementación (IG) FHIR de Vigilancia ESAVI brinda orientación sobre el uso de los recursos FHIR como mecanismo para compartir datos relacionados con Eventos Supuestamente Atribuibles a Vacunación e Inmunización (ESAVI) en las distintas etapas de su ciclo de vida, y además compartir los datos hacia la Organización Panamericana de la Salud (OPS).

### Situación actual
Según la encuesta de sistemas de información realizada por OPS en 2020, el 83% de los países de la región NO tenían sistemas de información lo suficientemente maduros para la vigilancia de ESAVI. Un grupo de países basaba la vigilancia en formularios en papel, y los agregaba en planillas de cálculo. En otros se encontraron sistemas con datos fragmentados en múltiples instituciones nacionales y una ausencia en la implementación de estándares para el registro preciso de las vacunas involucradas y de los eventos adversos asociados. La estrategia de la OPS se basó en apoyar a los países según su nivel de desarrollo, buscando fortalecer progresivamente sus capacidades y promoviendo una estrategia de digitalización de todas las actividades de la vigilancia. Esto incluye promover la adopción nacional de sistemas como DHIS2 (District Health Information System 2), un software open-source que fue adaptado para permitir el seguimiento de casos de ESAVI.

### Problemática

La vacunación es ampliamente reconocida como una de las intervenciones más costo-efectivas para prevenir enfermedades infecciosas y mejorar la salud pública. Sin embargo, a pesar de sus beneficios, la administración de vacunas puede estar asociada a eventos adversos conocidos como Eventos Supuestamente Atribuibles a la Vacunación o Inmunización (ESAVI). Estos eventos, que incluyen desde reacciones leves hasta casos graves, pueden afectar la confianza del público en los programas de inmunización si no se manejan de manera adecuada.

La pandemia de COVID-19 exacerbó los retos relacionados con la vigilancia de los ESAVI. La rápida distribución de nuevas vacunas desarrolladas bajo autorizaciones de emergencia puso a prueba la capacidad de los sistemas de información para detectar y reportar datos de seguridad de manera oportuna. En particular, en la región de las Américas, se identificaron brechas significativas en la interoperabilidad de los sistemas nacionales de salud, lo que dificultó el análisis y la comunicación de riesgos potenciales.

En este contexto, la vigilancia efectiva de los ESAVI es crucial para garantizar la seguridad de los productos vacunales y fortalecer la confianza del público. Esto requiere sistemas de información robustos, estandarizados e interoperables que permitan la detección temprana, notificación y análisis de eventos adversos.

### Solución Propuesta

Para abordar estos desafíos, el proyecto propone el desarrollo de un Kit de Adaptación Digital (DAK) de Nivel 2 y una Guía de Implementación FHIR (Nivel 3\) diseñados específicamente para la vigilancia de los ESAVI a nivel nacional. Estas herramientas están alineadas con las Directrices SMART de la Organización Mundial de la Salud (OMS), que proporcionan un enfoque estructurado para la digitalización de las recomendaciones clínicas y de salud pública.

El DAK de Nivel 2 definirá los requisitos operativos necesarios para integrar las recomendaciones de vigilancia de ESAVI en los sistemas de información existentes. Por su parte, la Guía de Implementación FHIR de Nivel 3 permitirá la creación de artefactos computables que estandaricen el intercambio de datos entre los sistemas nacionales y regionales, asegurando la compatibilidad con bases de datos internacionales como Vigibase.

Estas soluciones facilitarán:

* La digitalización de los procesos de detección, notificación, investigación, análisis y comunicación relacionados con los ESAVI.  
* La adopción de estándares internacionales de codificación como SNOMED, WHODrug e ICD-11.  
* La interoperabilidad entre los sistemas nacionales y las bases de datos regionales y globales.

### Del modelo lógico a la implementación

El modelo lógico está basado en las recomendaciones del Manual Regional de Vigilancia de ESAVI para el reporte individual de casos, donde cada estado miembro informa hacia el Sistema Regional de Vacunación Segura de la OPS. Como paso previo se estructuró un Diccionario de Datos para Notificación de ESAVI ES en formato tabular. Este modelo lógico se encuentra mapeado a un recurso [Questionnaire] (https://build.fhir.org/ig/PanAmericanHealthOrganization/OPS-ESAVI/StructureDefinition-ESAVIQuestionnaireResponse.html) <!-- CAMBIAR EL LINK CUANDO SE TENGA EL RECURSO!!!!!!! -->

### Requerimientos de Conformidad

Los requerimientos de conformidad describen las expectativas sobre la funcionalidad de las aplicaciones servidor/cliente, identificando los perfiles específicos y las interacciones que deben implementar. Los perfiles individuales identifican los requerimientos estructurales y terminológicos. Las definiciones de parámetros de búsqueda y operaciones especifican cómo son implementados por los servidores.

### Definiciones

* **ESAVI**
Se denomina ESAVI (Eventos Supuestamente Atribuibles a Vacunación o Inmunización, también conocidos como Eventos Adversos Posteriores a Vacunación, EAPV, o Adverse Event Following Immunization, AEFI en inglés) como cualquier situación de salud (signo, hallazgo anormal de laboratorio, síntoma o enfermedad) desfavorable y no intencionada que ocurra luego de la vacunación o inmunización y que no necesariamente tiene una relación causal con el proceso de vacunación o con la vacuna.
La vigilancia de ESAVI es uno de los elementos más importantes para garantizar que las vacunas sean seguras y que se administren de manera segura. Las reacciones graves posteriores a la inmunización son muy poco frecuentes, por lo que su detección exige agrupar datos de ESAVI de múltiples países en bases de datos regionales y/o globales. 

### Sobre la Guía de Implementación (IG)

La Guía de Implementación basada en FHIR es una herramienta clave para garantizar la interoperabilidad y estandarización en la vigilancia de los ESAVI. Esta guía incluirá:

* Modelos lógicos que representen los procesos clínicos y de vigilancia.  
* Perfiles FHIR para la captura y el intercambio de datos.  
* Escenarios de usuario que ilustren casos de uso comunes en diferentes contextos.  
* Casos de prueba para validar la implementación en entornos reales.

El desarrollo de estas herramientas se realizará en colaboración con expertos en informática en salud, vigilancia de vacunas y terminologías clínicas, asegurando su relevancia y aplicabilidad en los países de la región de las Américas.


<!-- ### Cómo leer esta guía

Esta guía está dividida en varias secciones que se muestran en la barra de menú ubicada en la parte superior de la página

Inicio: Provee la introducción acerca de esta guía.

Objetivos: Describe los objetivos estratégicos y de interoperabilidad

Datos Generales: Aspectos Generales respecto al proyecto y la Guía

Actores y Casos de Uso: Definición de los Casos de Uso.

Operaciones FHIR: Operaciones Rest usadas para el proyecto.

Artefactos: Estas páginas proveen descripciones detalladas y definiciones formales para los objetos FHIR presentes en la guía.

Uso: Explica las interpretaciones e intenciones de la semántica de los recursos.

Seguridad: Explica los formatos de seguridad para la conexión con el Sistema Regional.

Descargas: Agrupa las descargas disponibles como perfiles, paquete de validación, ejemplos, etc -->