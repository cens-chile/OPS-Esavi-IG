Instance: QuestionnaireOPSEsavi
Title: "ESAVI Questionnaire"
Description: "ESAVI Questionnaire"
InstanceOf: Questionnaire
Usage: #example
* status = #draft
* name = "OPS-QuestionnaireESAVI"
* title = "Cuestionario de notificación"

/////////////////////  Grupo antecedentesMedicos  //////////////////////////////////

* item[0].type = #group
* item[=].required = false
* item[=].repeats = true
* item[=].linkId = "antecedentesMedicos"
* item[=].text = "Antecedentes médicos de la persona vacunada"

* item[=].item[0].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "diagnosticoAntecedente"
* item[=].item[=].text = "Registre las enfermedades previas o recientes, los antecedentes toxicológicos o por exposición, quirúrgicos y epidemiológicos relevantes. Indique si hay otras personas en la familia o la comunidad —vacunadas o no— con síntomas similares. Especifique también si tiene información de la circulación de un agente infeccioso en la comunidad cercana a la persona vacunada o de otras personas en la comunidad."

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "terminoDiagnosticoAntecedente"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/CodigoMeDRAAntecedenteVS" 
* item[=].item[=].text = "Corresponde al código del diagnóstico o antecedente médico según el estándar utilizado por el país ( los más utilizados en farmacovigilancia son MedDRA/CIE 11/SNOMED). Usualmente se utiliza el nivel  más bajo de la jerarquía del estándar. Por ejemplo en el caso del estándar MedDRA se utiliza el  código LLT."

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "codigoMeDRAAntecedente"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/CodigoMeDRAAntecedenteVS" 
* item[=].item[=].text = "Corresponde a los problemas de salud previos de la persona afectada por el ESAVI, codificado en MedDRA. Con énfasis en comorbilidades o enfermedades concomitantes al evento adverso, eventos previos similares y eventos médicos relevantes para el evento de salud actual."


/////////////////////  Grupo antecedentesFarmacologicos  //////////////////////////////////

* item[+].type = #group
* item[=].required = false
* item[=].repeats = true
* item[=].linkId = "antecedentesFarmacologicos"
* item[=].text = "Antecedentes farmacológicos (se puede repetir para incluir los medicamentos que sean necesarios indicar)"

* item[=].item[0].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "medicamento"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/CodigoMedicamentoVS" 
* item[=].item[=].text = "Identifica los nombres de los medicamentos por nombre genérico/nombre comercial/substancia activa administrados de manera concomitante con la vacuna o que sean relevantes para el evento adverso observado."

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "formaFarmaceutica"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/FormaFarmaceuticaVS" 
* item[=].item[=].text = "Corresponde a la presentación del medicamento que la persona estaba tomando al momento de la vacunación."

* item[=].item[+].type = #string // revisar !!
* item[=].item[=].required = true
* item[=].item[=].linkId = "dosisMedicamento"
* item[=].item[=].text = "Corresponde a identificar la cantidad y unidad de medida del medicamento/nombre genérico administrado además de la frecuencia de uso del medicamento según el número de veces al día que se consume."

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "viaMedicamento"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/ViaAdminMedicamentoVS" 
* item[=].item[=].text = "Corresponde a identificar la vía de administración de los medicamentos que se administraron."

/////////////////////  Grupo vacunas  //////////////////////////////////

* item[+].type = #group
* item[=].required = true
* item[=].repeats = true 
* item[=].linkId = "vacunas"
* item[=].text = "Vacunas"

* item[=].item[0].type = #string
* item[=].item[=].required = true
* item[=].item[=].linkId = "nombre"
* item[=].item[=].text = "Identifica los nombres de la s vacunas administradas  por nombre genérico/nombre comercial/substancia activa administrados de manera concomitante con la vacuna o que sean relevantes para el evento adverso observado."

* item[=].item[+].type = #string
* item[=].item[=].required = true
* item[=].item[=].linkId = "nombreComercial"
* item[=].item[=].text = "Corresponde al nombre comercial de la vacuna administrada."

* item[=].item[+].type = #string
* item[=].item[=].required = true
* item[=].item[=].linkId = "nombreNoClasificado"
* item[=].item[=].text = "Corresponde al nombre de las vacunas administradas inmediatamente antes del ESAVI y en el caso de COVID19 las vacunas aplicadas como parte del esquema completo."

* item[=].item[+].type = #string
* item[=].item[=].required = true
* item[=].item[=].linkId = "nombreFabricante"
* item[=].item[=].text = "Corresponde al nombre del fabricante de las vacunas administradas inmediatamente antes del ESAVI y en el caso de COVID19 las vacunas aplicadas como parte del esquema completo."

* item[=].item[+].type = #choice 
* item[=].item[=].required = false
* item[=].item[=].linkId = "codigoVacuna"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/CodigoWhoVacunaVS"
* item[=].item[=].text = "Corresponde al codigo de la vacuna vacunas administradas inmediatamente antes del ESAVI."

* item[=].item[+].type = #date
* item[=].item[=].required = true
* item[=].item[=].linkId = "fechaAdministracion"
* item[=].item[=].text = "Corresponde al dia de aplicacion de la vacuna de referencia"

* item[=].item[+].type = #time
* item[=].item[=].required = true
* item[=].item[=].linkId = "horaAdministracion"
* item[=].item[=].text = "Corresponde a la hora de aplicacion de la vacuna de referencia."

* item[=].item[+].type = #integer 
* item[=].item[=].required = true
* item[=].item[=].linkId = "dosis"
* item[=].item[=].text = "Corresponde al orden de la dosis de la vacuna que se consigna para el ESAVI."

* item[=].item[+].type = #string
* item[=].item[=].required = true
* item[=].item[=].linkId = "lote"
* item[=].item[=].text = "Corresponde al lote de la vacuna que se consigna para el ESAVI, indicado por el fabricante."

* item[=].item[+].type = #date
* item[=].item[=].required = true
* item[=].item[=].linkId = "fechaVencimientoVacuna"
* item[=].item[=].text = "Corresponde a la fecha de vencimiento de la vacuna que se consigna para el ESAVI, indicada por el fabricante."

* item[=].item[+].type = #choice // crear cs/vs 
* item[=].item[=].required = false
* item[=].item[=].linkId = "nombreDiluyenteVacuna"
* item[=].item[=].text = "Corresponde al nombre del diluyente de la vacuna que se consigna para el ESAVI."

* item[=].item[+].type = #string
* item[=].item[=].required = false
* item[=].item[=].linkId = "loteDiluyente"
* item[=].item[=].text = "Corresponde al numero de lote del diluyente de la vacuna que se consigna para el ESAVI, indicado por el fabricante."

* item[=].item[+].type = #date
* item[=].item[=].required = false
* item[=].item[=].linkId = "fechaVencimientoDiluyente"
* item[=].item[=].text = "Corresponde a la fecha de vencimiento del diluyente de la vacuna indicada por el fabricante"

* item[=].item[+].type = #date
* item[=].item[=].required = false
* item[=].item[=].linkId = "fechaReconstitucion"
* item[=].item[=].text = "Fecha en la que se combinó el diluyente y la vacuna para ser administrada."

* item[=].item[+].type = #string
* item[=].item[=].required = false
* item[=].item[=].linkId = "horaReconstitucion"
* item[=].item[=].text = "Hora en la que se combinó el diluyente y la vacuna para ser administrada."

* item[=].item[+].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].linkId = "existeOtraVacunacion"
* item[=].item[=].text = "Administración de otra vacuna, distinta a la registrada anteriormente, en los 30 días previos al inicio de los síntomas del ESAVI que se está notificando."

* item[=].item[+].type = #string
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "otraVacunaNombre"
* item[=].item[=].text = "Descripción de otra vacuna administrada en los 30 días anteriores."

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "formaDeVerificacion"
* item[=].item[=].text = "Mecanismo de validación del proceso de vacunación."

* item[=].item[+].type = #string
* item[=].item[=].required = false
* item[=].item[=].linkId = "otroMetodoDeVerificacion"
* item[=].item[=].text = "Descripción de otro mecanismo de validación del proceso de vacunación."


/////////////////////  Grupo ESAVI  //////////////////////////////////

* item[+].type = #group
* item[=].required = true
* item[=].repeats = true
* item[=].linkId = "ESAVI"
* item[=].text = "Datos sobre ESAVI"

* item[=].item[0].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "nombreESAVI"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/NombreESAVIVS"
* item[=].item[=].text = "Corresponde al nombre individual del signo, síntoma, hallazgo anormal de laboratorio o enfermedad."

* item[=].item[+].type = #string 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "otroNombre"
* item[=].item[=].text = "Nombre de reacción no existente en la lista anterior"

* item[=].item[+].type = #string 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "fechaInicio"
* item[=].item[=].text = "Corresponde a la fecha de inicio de síntomas/signos/hallazgo anormal de laboratorio/enfermedad referido por el paciente o identificado por el médico tratante."

* item[=].item[+].type = #string 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "horaInicio"
* item[=].item[=].text = "Corresponde a la Hora de inicio de síntomas/signos/hallazgo anormal de laboratorio/enfermedad referido por el paciente o identificado por el médico tratante"

* item[=].item[+].type = #choice
* item[=].item[=].required = false 
* item[=].item[=].linkId = "codigoMedDRA"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/CodigoMeDRAAntecedenteVS" 
* item[=].item[=].text = "Código estandarizado para la codificación del diagnóstico de la situación de salud notificada."

* item[=].item[+].type = #string 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "codigoCIE"
* item[=].item[=].text = "Código estandarizado para la codificación del diagnóstico. Se puede usar."

* item[=].item[+].type = #string 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "descripcionSintomas"
* item[=].item[=].text = "Síntomas tal como los describe el paciente o la paciente, y los signos clínicos del evento, e incluya también los resultados de las pruebas de laboratorio y de imagen realizadas que sean relevantes)."

* item[=].item[+].type = #boolean 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "gravedad"
* item[=].item[=].text = "Responde si el caso es Grave basado en los criterios definidos por el manual regional. Si se responde que 'Si' deberá registrar los criterios que cumple el caso, dado por las respuestas abajo indicadas."

* item[=].item[+].type = #boolean 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "muerte"
* item[=].item[=].text = "Identifica a las muertes como criterio de gravedad del ESAVI. No es necesario tener evidencia de causalidad para que se haya marcado esta variable."

* item[=].item[+].type = #boolean 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "riesgoVida"
* item[=].item[=].text = "Identifica los ESAVI en los que se pone en riesgo la vida en el momento de la ocurrencia del ESAVI."

* item[=].item[+].type = #boolean 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "discapacidad"
* item[=].item[=].text = "Identifica los ESAVI en los que hay discapacidad significativa o persistente al momento de la notificación o seguimiento."

* item[=].item[+].type = #boolean 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "hospitalizacion"
* item[=].item[=].text = "Identifica los ESAVI en los que hubo hospitalización en el momento de la notificación o seguimiento."

* item[=].item[+].type = #boolean 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "anomalia"
* item[=].item[=].text = "Presencia de anomalías congénitas después de la vacunación."

* item[=].item[+].type = #boolean 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "aborto"
* item[=].item[=].text = "Presencia de aborto después de la vacunación."

* item[=].item[+].type = #boolean 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "muerteFetal"
* item[=].item[=].text = "Presencia de muerte fetal después de la vacunación."

* item[=].item[+].type = #boolean
* item[=].item[=].required = false 
* item[=].item[=].linkId = "otroEventoClinico"
* item[=].item[=].text = "Presencia de otro evento clínico importante después de la vacunación."

* item[=].item[+].type = #string 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "especificacionOtroEventoClinico"
* item[=].item[=].text = "Especificación del 'otro evento clínico importante'."

* item[=].item[+].type = #choice // choice (ver excel)
* item[=].item[=].required = false 
* item[=].item[=].linkId = "condicionResultante"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/ClasificacionDesenlaceVS"
* item[=].item[=].text = "Categorías de desenlace del ESAVI."

* item[=].item[+].type = #dateTime 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "fechadeMuerte"
* item[=].item[=].text = "Corresponde a la fecha de muerte."

* item[=].item[+].type = #boolean 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "autopsiaSolicitada"
* item[=].item[=].text = "Indica si se solicitó autopsia."

* item[=].item[+].type = #boolean // choice (ver excel)
* item[=].item[=].required = false 
* item[=].item[=].linkId = "autopsiaRealizada"
* item[=].item[=].text = "Indica si al caso se le realizó autopsia."

* item[=].item[+].type = #attachment 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "informeAutopsia"
* item[=].item[=].text = "Adjuntar informe."

/////////////////////  Grupo datosDeInvestigación  //////////////////////////////////

* item[+].type = #group
* item[=].required = false
* item[=].linkId = "datosDeInvestigación"
* item[=].text = "Datos de la investigación"

* item[=].item[0].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].linkId = "investigacionRequerida"
* item[=].item[=].text = "Es requerida la investigación del ESAVI?"

* item[=].item[+].type = #string //choice concisa - completa
* item[=].item[=].required = false // if investigacionRequerida = true then required = true
* item[=].item[=].linkId = "tipoInvestigacion"
* item[=].item[=].text = "Tipo de investigación requerida"

* item[=].item[+].type = #date
* item[=].item[=].required = true
* item[=].item[=].linkId = "fechaPrevistaInicioInvestigacion"
* item[=].item[=].text = "Fecha prevista para el inicio de la investigación"

* item[=].item[+].type = #date
* item[=].item[=].required = true
* item[=].item[=].linkId = "fechaInicioInvestigacion"
* item[=].item[=].text = "Fecha de inicio de la investigación"

/////////////////////  Grupo apartadoNivelNacional  //////////////////////////////////

* item[+].type = #group
* item[=].required = false
* item[=].linkId = "apartadoNivelNacional"
* item[=].text = "Apartado que debe completar el nivel nacional"

* item[=].item[0].type = #boolean
* item[=].item[=].required = false
* item[=].item[=].linkId = "fechaRecepcionNacional"
* item[=].item[=].text = "Fecha en que el nivel nacional recibió la notificación."

* item[=].item[+].type = #string 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "comentarios"
* item[=].item[=].text = "Comentarios o información adicional que considere importante y que no haya registrado en los apartados anteriores."