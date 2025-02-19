Instance: EjemploBundleComposition
Title: "Ejemplo Bundle"
Description: "Ejemplo del Bundle para la notificación de casos esavi"
InstanceOf: BundleDocumentOPSEsavi
Usage: #example

* identifier.system = "http://acme.com/fhir/Bundle/EjemploBundleComposition"
* identifier.value = "EjemploBundleComposition"

* timestamp = "2024-12-01T11:00:00Z"

* type = #document

* entry[composition].fullUrl = "http://acme.com/fhir/Composition/EjemploComposition"
* entry[composition].resource = EjemploComposition

* entry[patient].fullUrl = "http://acme.com/fhir/Patient/EjemploPatient"
* entry[patient].resource = EjemploPatient 

* entry[practitioner].fullUrl = "http://acme.com/fhir/Practitioner/EjemploPractitioner"
* entry[practitioner].resource = EjemploPractitioner

* entry[organization].fullUrl = "http://acme.com/fhir/Organization/EjemploOrganizationNotificadora"
* entry[organization].resource = EjemploOrganizationNotificadora

* entry[practitionerRole].fullUrl = "http://acme.com/fhir/PractitionerRole/EjemploPRole"
* entry[practitionerRole].resource = EjemploPRole
