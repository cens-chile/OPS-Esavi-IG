Instance: EjemploOrganizationNotificadora
InstanceOf: OrganizationNotificadoraOPSEsavi
Title: "Ejemplo de Orgnización notificadora"
Description: "Ejemplo de una organización notificadora"
Usage: #example

* name = "Hospital Miguel de Cervantes"

* address.line = "Av. Libertador Bernardo O'Higgins 2135"
* address.city = "Santiago" 
* address.state = "Región Metropolitana"
* address.country = "Chile"

* telecom.system = #phone
* telecom.value = "022441234"
* telecom.use = #work

* telecom.system = #email
* telecom.value = "example@organization.com"
* telecom.use = #work

* extension[NivelGeoSubnacional].url = "https://paho.org/fhir/ops-esavi/StructureDefinition/opsesavi-nvlgeosub" 
* extension[NivelGeoSubnacional].valueCodeableConcept.coding.system = "https://paho.org/fhir/ops-esavi/CodeSystem/DirOrgNotiCS"
* extension[NivelGeoSubnacional].valueCodeableConcept.coding.code = #CL_RM_13110