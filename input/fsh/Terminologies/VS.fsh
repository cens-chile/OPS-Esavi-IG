ValueSet: DirOrgNotiVS 
Id: DirOrgNotiVS
Title: "Códigos PAHO para Direcciones"
Description: "Conjunto de Valores para dirección según OPS"
* insert RuleSetVS
* include codes from system DirOrgNotiCS

ValueSet: CodigoWhoVacunaVS
Id: CodigoWhoVacunaVS
Title: "Codigo WHODrug de la vacuna"
Description: "Codificación Estandarizda del código de las Vacunas según WhoDrug"
* insert RuleSetVS
* include codes from system WHODrugDCCS

ValueSet: ProfesionalNotificadorVS 
Id: ProfesionalNotificadorVS
Title: "Tipo de Profesional Notificador"
Description: "Códigos de Tipo de Notificadores de ESAVI para PAHO"
* insert RuleSetVS
* include codes from system ProfesionalNotificadorCS

ValueSet: CodPaisesVS
Id: CodPaisesVS
Title: "Códigos de Paises"
Description: "Codigos definidos para la identificación de países segun norma ISO3166-3"
* insert RuleSetVS
* include codes from system CodPaisesCS

ValueSet: GrupoEtnicoVS
Id: GrupoEtnicoVS
Title: "Grupo étnico"
Description: "Códigos de Grupo étnicos, considerando solo una pequeña cantidad a modo de ejemplo"
* insert RuleSetVS
* include codes from system GrupoEtnicoCS

ValueSet: UnidadesDeMedidaVS
Id: UnidadesDeMedidaVS
Title: "Unidades de medida"
Description: "Códigos de unidades de medida según el sistema internacional de unidades"
* insert RuleSetVS
* include codes from system http://unitsofmeasure.org

ValueSet: CargoVS
Id: CargoVS
Title: "Cargo"
Description: "Codigos que incluye algunos cargos, a modo de ejemplo, dentro de una organizacion"
* insert RuleSetVS
* include codes from system CargoCS

ValueSet: ViaAdminMedicamentoVS 
Id: ViaAdminMedicamentoVS
Title: "Vías de Administración de Medicamentos"
Description: "Describe y lista las vías de administración de medicamentos para registro en ESAVI segun SNOMED CT"
* insert RuleSetVS
* include codes from system SCT where concept is-a #736479009 "sitio de administración previsto de forma farmacéutica (sitio de administración previsto)"

ValueSet: FormaFarmaceuticaVS 
Id: FormaFarmaceuticaVS
Title: "Identificación Formas Farmacéuticas"
Description: "Describe y lista las formas farmaceuticas de medicamentos para registro en ESAVI segun SNOMED CT"
* insert RuleSetVS
* include codes from system SCT where concept is-a #736478001 "forma farmacéutica básica (forma farmacéutica básica)"

ValueSet: CodigoMedicamentoVS 
Id: CodigoMedicamentoVS
Title: "Codigo Medicamento"
Description:  "Codigo Medicamento"
* insert RuleSetVS
* include codes from system SCT where concept is-a #105590001 "Sustancia"
* include codes from system SCT where concept is-a #105590001 "Sustancia"
* include codes from system WHODrugDCCS

ValueSet: CodigoMeDRAAntecedenteVS
Id: CodigoMeDRAAntecedenteVS
Title: "Código MedDRA de Antecedente"
Description: "Códigos de Antecedentes según MedDRA"
* insert RuleSetVS
* include codes from system MedDRACS

ValueSet: FormaVerificacionVS
Id: FormaVerificacionVS
Title: "Código forma de Verificación"
Description: "Códigos de Forma de Verificación de ESAVI"
* insert RuleSetVS
* include codes from system FormaVerificacionCS

ValueSet: NombreESAVIVS
Id: NombreESAVIVS
Title: "Código nombre ESAVI"
Description: "Eventos supuestamente atribuibles a la vacunación o inmunización (ESAVI)"
* insert RuleSetVS
* include codes from system NombreESAVICS

ValueSet: ClasificacionDesenlaceVS
Id: ClasificacionDesenlaceVS
Title: "Código desenlaces tras ESAVI"
Description: "Clasificación de Desenlace Tras Sufrir ESAVI"
* insert RuleSetVS
* include codes from system ClasificacionDesenlaceCS

