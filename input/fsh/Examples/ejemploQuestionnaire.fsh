Instance: EjemploESAVIQuestionnaireResponse
Title: "Ejemplo ESAVI QuestionnaireResponse"
Description: "Ejemplo de un QuestionnaireResponse para la notificación de casos esavi"
InstanceOf: QuestionnaireResponseOPSEsavi
Usage: #example

* meta.versionId = "1"
* meta.lastUpdated = "2024-03-30T14:07:04.371+00:00"
* meta.source = "#0Emc5iUG1akh56hk"

* identifier.value = "f9a9a518-7b6f-472a-bf28-9aad7a8eeb22"
* status = #completed
* questionnaire = Canonical(QuestionnaireOPSEsavi)

* authored = "2024-03-30T14:07:04.371+00:00"

/////////////////////  Grupo antecedentesMedicos  //////////////////////////////////

* item[0].linkId = "antecedentesMedicos"
* item[=].text = "Antecedentes médicos de la persona vacunada"

* item[=].item[0].linkId = "diagnosticoAntecedente"
* item[=].item[=].text = "Registre las enfermedades previas o recientes, los antecedentes toxicológicos o por exposición, quirúrgicos y epidemiológicos relevantes. Indique si hay otras personas en la familia o la comunidad —vacunadas o no— con síntomas similares. Especifique también si tiene información de la circulación de un agente infeccioso en la comunidad cercana a la persona vacunada o de otras personas en la comunidad."
* item[=].item[=].answer.valueCoding = http://terminologia.org#9812741 "Diabetes"

* item[=].item[+].linkId = "terminoDiagnosticoAntecedente"
* item[=].item[=].text = "Corresponde al código del diagnóstico o antecedente médico según el estándar utilizado por el país ( los más utilizados en farmacovigilancia son MedDRA/CIE 11/SNOMED). Usualmente se utiliza el nivel  más bajo de la jerarquía del estándar. Por ejemplo en el caso del estándar MedDRA se utiliza el  código LLT."
* item[=].item[=].answer.valueCoding = https://paho.org/fhir/ops-esavi/CodeSystem/CodigoMeDRAAntecedenteCS#10011333

* item[=].item[+].linkId = "codigoMeDRAAntecedente"
* item[=].item[=].text = "Corresponde a los problemas de salud previos de la persona afectada por el ESAVI, codificado en MedDRA. Con énfasis en comorbilidades o enfermedades concomitantes al evento adverso, eventos previos similares y eventos médicos relevantes para el evento de salud actual."
* item[=].item[=].answer.valueCoding = https://paho.org/fhir/ops-esavi/CodeSystem/CodigoMeDRAAntecedenteCS#10011333

/////////////////////  Grupo antecedentesFarmacologicos  //////////////////////////////////

* item[+].linkId = "antecedentesFarmacologicos"
* item[=].text = "Antecedentes farmacológicos (se puede repetir para incluir los medicamentos que sean necesarios indicar)"

* item[=].item[0].linkId = "medicamento"
* item[=].item[=].text = "Identifica los nombres de los medicamentos por nombre genérico/nombre comercial/substancia activa administrados de manera concomitante con la vacuna o que sean relevantes para el evento adverso observado."
* item[=].item[=].answer.valueCoding = https://paho.org/fhir/ops-esavi/CodeSystem/CodigoMedicamentoCS#00000402192

* item[=].item[+].linkId = "formaFarmaceutica"
* item[=].item[=].text = "Corresponde a la presentación del medicamento que la persona estaba tomando al momento de la vacunación."
* item[=].item[=].answer.valueCoding = SCT#46992007

* item[=].item[+].linkId = "dosisMedicamento"
* item[=].item[=].text = "Corresponde a identificar la cantidad y unidad de medida del medicamento/nombre genérico administrado además de la frecuencia de uso del medicamento según el número de veces al día que se consume."
* item[=].item[=].answer.valueString = "1 comprimido cada 24 horas"

* item[=].item[+].linkId = "viaMedicamento"
* item[=].item[=].text = "Corresponde a identificar la vía de administración de los medicamentos que se administraron."
* item[=].item[=].answer.valueCoding = SCT#738956005

/////////////////////  Grupo vacunas  //////////////////////////////////

* item[+].linkId = "vacunas"
* item[=].text = "Vacunas"

* item[=].item[0].linkId = "nombre"
* item[=].item[=].text = "Identifica los nombres de la s vacunas administradas  por nombre genérico/nombre comercial/substancia activa administrados de manera concomitante con la vacuna o que sean relevantes para el evento adverso observado."
* item[=].item[=].answer.valueString = "BNT162b2"

* item[=].item[+].linkId = "nombreComercial"
* item[=].item[=].text = "Corresponde al nombre comercial de la vacuna administrada."
* item[=].item[=].answer.valueString = "BNT162b2"

* item[=].item[+].linkId = "nombreNoClasificado"
* item[=].item[=].text = "Corresponde al nombre de las vacunas administradas inmediatamente antes del ESAVI y en el caso de COVID19 las vacunas aplicadas como parte del esquema completo."
* item[=].item[=].answer.valueString = "Vacuna contra la COVID-19"

* item[=].item[+].linkId = "nombreFabricante"
* item[=].item[=].text = "Corresponde al nombre del fabricante de las vacunas administradas inmediatamente antes del ESAVI y en el caso de COVID19 las vacunas aplicadas como parte del esquema completo."
* item[=].item[=].answer.valueString = "Pfizer BioNTech"

* item[=].item[+].linkId = "codigoVacuna"
* item[=].item[=].text = "Corresponde al codigo de la vacuna vacunas administradas inmediatamente antes del ESAVI."
* item[=].item[=].answer.valueCoding = https://paho.org/fhir/ops-esavi/CodeSystem/WHODrugCS#00000301014

* item[=].item[+].linkId = "fechaAdministracion"
* item[=].item[=].text = "Corresponde al dia de aplicacion de la vacuna de referencia"
* item[=].item[=].answer.valueDate = "2024-03-30"

* item[=].item[+].linkId = "horaAdministracion"
* item[=].item[=].text = "Corresponde a la hora de aplicacion de la vacuna de referencia."
* item[=].item[=].answer.valueTime = "14:15:00"

* item[=].item[+].linkId = "dosis"
* item[=].item[=].text = "Corresponde al orden de la dosis de la vacuna que se consigna para el ESAVI."
* item[=].item[=].answer.valueInteger = 3

* item[=].item[+].linkId = "lote"
* item[=].item[=].text = "Corresponde al lote de la vacuna que se consigna para el ESAVI, indicado por el fabricante."
* item[=].item[=].answer.valueString = "AB1234"

* item[=].item[+].linkId = "fechaVencimientoVacuna"
* item[=].item[=].text = "Corresponde a la fecha de vencimiento de la vacuna que se consigna para el ESAVI, indicada por el fabricante."
* item[=].item[=].answer.valueDate = "2026-04-26"

* item[=].item[+].linkId = "existeOtraVacunacion"
* item[=].item[=].text = "Administración de otra vacuna, distinta a la registrada anteriormente, en los 30 días previos al inicio de los síntomas del ESAVI que se está notificando."
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "formaDeVerificacion"
* item[=].item[=].text = "Mecanismo de validación del proceso de vacunación."
* item[=].item[=].answer.valueCoding = https://paho.org/fhir/ops-esavi/CodeSystem/FormaVerificacionCS#1


/////////////////////  Grupo ESAVI  //////////////////////////////////

* item[+].linkId = "ESAVI"
* item[=].text = "Datos sobre ESAVI"

* item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].text = "Corresponde al nombre individual del signo, síntoma, hallazgo anormal de laboratorio o enfermedad."
* item[=].item[=].answer.valueCoding = https://paho.org/fhir/ops-esavi/CodeSystem/NombreESAVICS#1

* item[=].item[+].linkId = "fechaInicio"
* item[=].item[=].text = "Corresponde a la fecha de inicio de síntomas/signos/hallazgo anormal de laboratorio/enfermedad referido por el paciente o identificado por el médico tratante."
* item[=].item[=].answer.valueDate = "2024-03-31"

* item[=].item[+].linkId = "horaInicio"
* item[=].item[=].text = "Corresponde a la Hora de inicio de síntomas/signos/hallazgo anormal de laboratorio/enfermedad referido por el paciente o identificado por el médico tratante"
* item[=].item[=].answer.valueTime = "15:30:00"


/////////////////////  Grupo datosDeInvestigación  //////////////////////////////////

* item[+].linkId = "datosDeInvestigación"
* item[=].text = "Datos de la investigación"

* item[=].item[0].linkId = "investigacionRequerida"
* item[=].item[=].text = "Es requerida la investigación del ESAVI?"
* item[=].item[=].answer.valueBoolean = false

/////////////////////  Grupo apartadoNivelNacional  //////////////////////////////////

