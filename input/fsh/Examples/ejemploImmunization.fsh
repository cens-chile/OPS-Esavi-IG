Instance: EjemploImmunization
InstanceOf: ImmunizationOPSEsavi
Title: "Ejemplo de Vacunación"
Description: "Instancia de un evento de vacunación para un caso ESAVI"

* status = #completed

* patient = Reference(EjemploPatient)

* occurrenceDateTime = "2024-12-01T10:00:00Z"

* lotNumber = "ABC123456"

* site.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActSite"
* site.coding.code = #LA 
* site.text = "Brazo izquierdo"

* vaccineCode.coding.code = #00000202032
* vaccineCode.coding.system = "https://paho.org/fhir/esavi/CodeSystem/WHODrugDCCS"
* vaccineCode.text = "Vacuna contra COVID-19"

* expirationDate = "2024-12-31"

* performer.actor = Reference(EjemploPractitioner)
