Profile: ImmunizationOPSEsavi
Title: "Vacunación"
Parent: Immunization
Description: "Evento de vacunación parte del caso esavi"


* status 1..1 

* patient 1..1

* occurrenceDateTime 1..1 

* lotNumber 1..1  
* lotNumber ^short = "Número de lote como texto libre"

* site 1..1 
  * coding 0..1 
    * code 0..1 
    * system 1..1  
  * text 0..1 

* vaccineCode 1..1  
  * coding 0..1 
    * system 0..1
    * code 0..1 
  * text 0..1 
* vaccineCode.text ^short = "Nombre de la vacuna como texto libre" 
* vaccineCode from CodigoWhoVacunaVS (preferred)

* expirationDate 0..1 MS

* performer 1..1 
  * actor 1..1 