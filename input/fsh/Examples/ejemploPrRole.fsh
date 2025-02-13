Instance: EjemploPRole
InstanceOf: PractitionerRoleCargoOPSEsavi
Title: "Ejemplo de Practioner Role"
Description: "Ejemplo de un practitioner role que representa el cargo de un notificador"
Usage: #example

* practitioner = Reference(EjemploPractitioner)

* organization = Reference(EjemploOrganizationNotificadora)

* code.coding.system = "https://paho.org/fhir/ops-esavi/CodeSystem/CargoCS"
* code.coding.code = #1