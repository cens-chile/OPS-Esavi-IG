Profile: PractitionerNotificadorOPSEsavi
Title: "Notificador"
Parent: Practitioner
Description: "Notificador de casos esavi"

* identifier 1..1 MS

* name 1..1 MS
  * given 1..* MS
  * family 1..1 MS

* qualification 0..* MS 
  * code 1..1 MS
  * code ^short = "El cargo que desempeña o tiene asignado una persona dentro de un establecimiento de salud.Indica la profesión de quién notifica según estándar E2B."
  * code ^definition = "El cargo que desempeña o tiene asignado una persona dentro de un establecimiento de salud.Indica la profesión de quién notifica según estándar E2B."
  * code from ProfesionalNotificadorVS (example)

* extension contains TipoNotificador named tipoNotificador 0..1 MS 
* extension[tipoNotificador] ^short = "Tipo de notificador que notifica el esavi"