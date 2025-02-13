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
/* * ^context.type = #element 
* ^context.expression = #Patient */
* value[x] only CodeableConcept
* value[x] ^short = "Nivel geografico subnacional"
* url 1..1 MS 
* valueCodeableConcept 0..1 MS 
  * coding 0..1 MS
    * system 1..1  
    * code 1..1 
* valueCodeableConcept.text 0..1 MS 
* valueCodeableConcept from DirOrgNotiVS (preferred)

Extension: Nacionalidad
Id: opsesavi-nacionalidad
Title: "Nacionalidad"
Description: "Extension usada para señalar la nacionalidad del paciente"
* ^context.type = #element 
* ^context.expression = #Patient
* value[x] only CodeableConcept
* value[x] ^short = "Nacionalidad"
* url 1..1 MS 
* valueCodeableConcept 0..1 MS 
  * coding 0..1 MS
    * system 1..1  
    * code 1..1 
* valueCodeableConcept.text 0..1 MS 
* valueCodeableConcept from CodPaisesVS (preferred)

Extension: Etnia
Id: opsesavi-etnia
Title: "Grupo étnico"
Description: "Extension usada para señalar el grupo étnico del paciente"
* ^context.type = #element 
* ^context.expression = #Patient
* value[x] only CodeableConcept
* value[x] ^short = "Grupo étnico"
* url 1..1 MS 
* valueCodeableConcept 0..1 MS 
  * coding 0..1 MS
    * system 1..1  
    * code 1..1 
* valueCodeableConcept.text 0..1 MS 
* valueCodeableConcept from GrupoEtnicoVS (preferred)


Extension: EdadEstimadaAnos
Id: opsesavi-edadestimada-anos
Title: "Edad estimada"
Description: "Extension para representar la edad estimada del paciente"
* ^status = #active
* ^context.type = #element 
* ^context.expression = #Patient
* url 1..1 MS 
* valueQuantity 0..1
* valueQuantity only Quantity
* valueQuantity from UnidadesDeMedidaVS (example)
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #a

Extension: EdadEstimadaMeses
Id: opsesavi-edadestimada-meses
Title: "Edad estimada"
Description: "Extension para representar la edad estimada del paciente"
* ^status = #active
* ^context.type = #element 
* ^context.expression = #Patient
* url 1..1 MS 
* valueQuantity 0..1
* valueQuantity only Quantity
* valueQuantity from UnidadesDeMedidaVS (example)
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mo

Extension: EdadEstimadaDias
Id: opsesavi-edadestimada-dias
Title: "Edad estimada"
Description: "Extension para representar la edad estimada del paciente"
* ^status = #active
* ^context.type = #element 
* ^context.expression = #Patient
* url 1..1 MS 
* valueQuantity 0..1
* valueQuantity only Quantity
* valueQuantity from UnidadesDeMedidaVS (example)
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #d