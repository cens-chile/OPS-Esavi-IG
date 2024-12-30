Profile: PatientOPSEsavi
Title: "Paciente"
Parent: Patient
Description: "Paciente parte de la notificación de casos esavi"

* extension contains NivelGeoSubnacional named nivelGeograficoSubnacional 0..1 MS
* extension[nivelGeograficoSubnacional] ^short = "Corresponde a Estado, Provincia o Departamento de residencia de la persona afectada por el evento"

* identifier 1..1  

* name 1..1 MS
  * family 1..1 
  * given 1..* 

* birthDate 1..1 MS

* address 1..1 MS

* gender 1..1 MS 
* gender ^short = "DEBE ser #male o #female" 
* gender ^definition = "DEBE ser #male o #female"

* telecom 1..* MS 
  * system 1..1 
  * value 1..1 
  * use 1..1 