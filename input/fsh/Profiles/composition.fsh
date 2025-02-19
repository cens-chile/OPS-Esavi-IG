Profile: CompositionOPSEsavi
Parent: Composition
Title: "Composotion Esavi"
Description: "Composotion para el Esavi, contiene datos útiles para la notificación y sus perfiles asociados"

* extension contains Pais named paisOrigen 1..1 MS
* extension[paisOrigen] ^short = "País de origen del reporte"

* subject 1..1 MS 
* subject only Reference(PatientOPSEsavi)

* status 1..1 
* status ^short = "Estado del Composition."
* status = #final

* type 1..1 
* type ^short = "Tipo de Composition."

* date 1..1 
* date ^short = "Fecha registrada de llegada de la notificación a la base de datos del país de origen."

* title 1..1 
* title ^short = "Título, de manera legible"

* author 1..1 
* author ^short = "Profesional notificador."
* author only Reference(PractitionerRoleCargoOPSEsavi)