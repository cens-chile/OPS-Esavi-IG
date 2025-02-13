Profile: PatientOPSEsavi
Title: "Paciente"
Parent: Patient
Description: "Paciente parte de la notificación de casos esavi"

* extension contains NivelGeoSubnacional named nivelGeograficoSubnacional 1..1 MS
* extension[nivelGeograficoSubnacional] ^short = "Corresponde a Estado, Provincia o Departamento de residencia de la persona afectada por el evento"

* extension contains Nacionalidad named nacionalidad 0..* MS
* extension[nacionalidad] ^short = "Nacionalidad"

* extension contains Etnia named etnia 0..1 MS
* extension[etnia] ^short = "Grupo étnico"

* extension contains EdadEstimadaAnos named edadEstimada-anos 1..1 MS
* extension[edadEstimada-anos] ^short = "Edad estimada del paciente al inicio del evento, los años"

* extension contains EdadEstimadaMeses named edadEstimada-meses 1..1 MS
* extension[edadEstimada-meses] ^short = "Edad estimada del paciente al inicio del evento, en este caso los meses"

* extension contains EdadEstimadaDias named edadEstimada-dias 1..1 MS
* extension[edadEstimada-dias] ^short = "Edad estimada del paciente al inicio del evento, en este caso los días"

* identifier 1..1  

* name 1..1 MS
  * family 1..1 
  * given 1..* 

* birthDate 1..1 MS

* address 1..1 MS

* gender 1..1 MS 
* gender ^short = "DEBE ser #male o #female" 
* gender ^definition = "DEBE ser #male o #female"

* telecom 0..* MS 
  * system 1..1 
  * value 1..1 
  * use 1..1 