Profile: PractitionerNotificadorOPSEsavi
Title: "Notificador"
Parent: Practitioner
Description: "Notificador de casos esavi"

* identifier 1..1 MS

* name 1..1 MS
  * given 1..* MS
  * family 1..1 MS

* extension contains TipoNotificador named tipoNotificador 0..1 MS 
* extension[tipoNotificador] ^short = "Tipo de notificador que notifica el esavi"