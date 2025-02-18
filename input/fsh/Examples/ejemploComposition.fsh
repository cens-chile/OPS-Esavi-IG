Instance: EjemploComposition
InstanceOf: CompositionOPSEsavi
Title: "Ejemplo de Composición"
Description: "Composición de ejemplo para notificación de caso ESAVI"


* extension[Pais].url = "https://paho.org/fhir/ops-esavi/StructureDefinition/opsesavi-pais"
* extension[Pais].valueCodeableConcept.coding.system = "https://paho.org/fhir/ops-esavi/CodeSystem/CodPaisesCS"
* extension[Pais].valueCodeableConcept.coding.code = #CHL

* status = #final 

* type.coding.system = "http://loinc.org"
* type.coding.code = #11503-0

* title = "Notificación de caso ESAVI"

* date = "2024-12-01T10:00:00Z"

* author = Reference(EjemploPRole)