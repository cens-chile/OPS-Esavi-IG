Profile: PractitionerRoleCargoOPSEsavi
Title: "Cargo del notificador"
Parent: PractitionerRole
Description: "Recurso utilizado para demostrar el cargo que desempeña o tiene asignado una persona dentro de un establecimiento de salud."

* practitioner 1..1 MS 
* practitioner only Reference(PractitionerNotificadorOPSEsavi)

* organization 1..1 MS 
* organization only Reference(OrganizationNotificadoraOPSEsavi)

* code 1..1 MS
* code from CargoVS (example)