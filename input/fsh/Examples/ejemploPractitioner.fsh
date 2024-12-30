Instance: EjemploPractitioner
InstanceOf: PractitionerNotificadorOPSEsavi
Title: "Ejemplo de notificador"
Description: "Ejemplo de un practitioner que notificó un registro esavi"
Usage: #example

* name 
  * given[0] = "María"
  * family = "Quezada"

* extension[TipoNotificador].url = "https://paho.org/fhir/ops-esavi/StructureDefinition/opsesavi-tiponotificador"  
* extension[TipoNotificador].valueCodeableConcept.coding.system = "https://paho.org/fhir/esavi/CodeSystem/ProfesionalNotificadorCS"
* extension[TipoNotificador].valueCodeableConcept.coding.code = #2

* identifier.system = "http://www.validadorindetificaciones.com/ID/identificador"
* identifier.value = "16231314"
