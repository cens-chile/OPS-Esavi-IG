Profile: OrganizationNotificadoraOPSEsavi
Title: "Organización notificadora"
Parent: Organization
Description: "Orgnización que notifica los casos esavi"

* extension contains NivelGeoSubnacional named nivelGeograficoSubnacional 1..1 MS
* extension[nivelGeograficoSubnacional] ^short = "Corresponde al nivel inmediatamente inferior al nivel nacional asociado a la institución notificadora, es decir el departamento, provincia, estado o región, según el país."

* address 1..1 MS
* address ^short = "Información detallada que incluye la ubicación física del establecimiento de salud que realiza la notificación."

* name 1..1 MS
* name ^short = "Corresponde al nombre de la institución que hace el envío del reporte al nivel regional. Generalmente corresponde a las oficinas de los miniterios de salud o a las autoridades regulatorias nacionales de los países."

* telecom 1..* MS 
  * system 1..1 
  * value 1..1 
  * use 1..1 