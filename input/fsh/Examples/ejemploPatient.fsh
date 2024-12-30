Instance: EjemploPatient
InstanceOf: PatientOPSEsavi
Title: "Ejemplo de paciente"
Description: "Ejemplo de un paciente"
Usage: #example

* name 
  * given[0] = "Miguel"
  * family = "Cifuentes"

* address.line = "Las hortencias 25405"

* extension[NivelGeoSubnacional].url = "https://paho.org/fhir/ops-esavi/StructureDefinition/opsesavi-nvlgeosub"  
* extension[NivelGeoSubnacional].valueCodeableConcept.coding.system = "https://paho.org/fhir/esavi/CodeSystem/DirOrgNotiCS"
* extension[NivelGeoSubnacional].valueCodeableConcept.coding.code = #CL_RM_13110

* identifier.system = "http://www.validadorindetificaciones.com/ID/identificador"
* identifier.value = "16399288"

* telecom.system = #phone
* telecom.value = "2341234"
* telecom.use = #mobile

* telecom.system = #email
* telecom.value = "example@email.com"
* telecom.use = #home

* gender = #male

* birthDate = "1996-12-13"