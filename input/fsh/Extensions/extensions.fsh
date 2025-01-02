Extension: TipoNotificador
Id: opsesavi-tiponotificador
Title: "Tipo de profesional notificador"
Description: "Extension usada para describir al tipo de profresional notificador"
* ^context.type = #element 
* ^context.expression = #Practitioner
* value[x] only CodeableConcept
* value[x] ^short = "Tipo de profesional notificador"
* url 1..1 MS 
* valueCodeableConcept 0..1 MS 
  * coding 0..1 MS
    * system 1..1 MS 
    * code 1..1 MS 
* valueCodeableConcept.text 0..1 MS 
* valueCodeableConcept from ProfesionalNotificadorVS (preferred)

Extension: NivelGeoSubnacional
Id: opsesavi-nvlgeosub
Title: "Nivel geografico subnacional"
Description: "Extension usada para señalar el nivel geografico subnacional"
* ^context.type = #element 
* ^context.expression = #Patient
* value[x] only CodeableConcept
* value[x] ^short = "Nivel geografico subnacional"
* url 1..1 MS 
* valueCodeableConcept 0..1 MS 
  * coding 0..1 MS
    * system 1..1  
    * code 1..1 
* valueCodeableConcept.text 0..1 MS 
* valueCodeableConcept from DirOrgNotiVS (preferred)