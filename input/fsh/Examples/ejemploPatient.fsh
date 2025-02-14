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
* extension[NivelGeoSubnacional].valueCodeableConcept.coding.system = "https://paho.org/fhir/ops-esavi/CodeSystem/DirOrgNotiCS"
* extension[NivelGeoSubnacional].valueCodeableConcept.coding.code = #CL_RM_13110

* extension[EdadEstimadaAnos].url = "https://paho.org/fhir/ops-esavi/StructureDefinition/opsesavi-edadestimada-anos"
* extension[EdadEstimadaAnos].valueQuantity.system = "http://unitsofmeasure.org"
* extension[EdadEstimadaAnos].valueQuantity.code = #a
* extension[EdadEstimadaAnos].valueQuantity.value = 24

* extension[EdadEstimadaMeses].url = "https://paho.org/fhir/ops-esavi/StructureDefinition/opsesavi-edadestimada-meses"
* extension[EdadEstimadaMeses].valueQuantity.system = "http://unitsofmeasure.org"
* extension[EdadEstimadaMeses].valueQuantity.code = #mo
* extension[EdadEstimadaMeses].valueQuantity.value = 6

* extension[EdadEstimadaDias].url = "https://paho.org/fhir/ops-esavi/StructureDefinition/opsesavi-edadestimada-dias"
* extension[EdadEstimadaDias].valueQuantity.system = "http://unitsofmeasure.org"
* extension[EdadEstimadaDias].valueQuantity.code = #d
* extension[EdadEstimadaDias].valueQuantity.value = 13

* extension[Nacionalidad].url = "https://paho.org/fhir/ops-esavi/StructureDefinition/opsesavi-nacionalidad"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://paho.org/fhir/ops-esavi/CodeSystem/CodPaisesCS"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #CHL

* extension[Etnia].url = "https://paho.org/fhir/ops-esavi/StructureDefinition/opsesavi-etnia"
* extension[Etnia].valueCodeableConcept.coding.system = "https://paho.org/fhir/ops-esavi/CodeSystem/GrupoEtnicoCS"
* extension[Etnia].valueCodeableConcept.coding.code = #108

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