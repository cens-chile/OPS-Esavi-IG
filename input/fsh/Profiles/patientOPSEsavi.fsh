Profile: Paciente
Parent: Patient
Description: "Paciente parte de la notificación de casos esavi"

* identifier 1..1 MS 

* name 1..1 MS
  * family 1..1 MS
  * given 1..* MS


* birthDate 1..1 MS

* address 1..1 MS

/* FALTA EL NIVEL GEOGRAFICO SUBNACIONAL */

* gender 1..1 MS 
* gender ^short = "DEBE ser #male o #female" 
* gender ^definition = "DEBE ser #male o #female"

* telecom 1..* MS 
  * system 1..1 MS
  * value 1..1 MS
  * use 1..1 MS