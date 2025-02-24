Profile: BundleDocumentOPSEsavi
Parent: Bundle
Title: "Bundle Documento Esavi"
Description: "Bundle para el documento de notificación de casos esavi"

* identifier 1..1 MS 

* type MS 
* type ^short = "Tipo de Bundle."
* type = #document

* timestamp MS

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed

* entry contains composition 1..1
        and patient 1..1
        and practitioner 1..1 
        and organization 1..1
        and practitionerRole 1..1 
        and encounter 1..1
* entry[composition].resource only CompositionOPSEsavi
* entry[patient].resource only PatientOPSEsavi
* entry[practitioner].resource only PractitionerNotificadorOPSEsavi
* entry[organization].resource only OrganizationNotificadoraOPSEsavi
* entry[practitionerRole].resource only PractitionerRoleCargoOPSEsavi
* entry[encounter].resource only EncounterOPSEsavi