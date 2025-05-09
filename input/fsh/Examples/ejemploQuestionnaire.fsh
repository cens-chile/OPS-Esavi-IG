Instance: EjemploESAVIQuestionnaireResponse
Title: "Ejemplo ESAVI QuestionnaireResponse"
Description: "Ejemplo de un QuestionnaireResponse para la notificación de casos esavi"
InstanceOf: QuestionnaireResponseOPSEsavi
Usage: #example

* meta.versionId = "1"
* meta.lastUpdated = "2024-03-30T14:07:04.371+00:00"

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

* item[=].item[0].linkId = "nombreGenericoMedicamento"
* item[=].item[=].text = "Corresponde al nombre común o denominación común internacional oficial recomendada por la OMS de un medicamento usado de manera concomitante con la vacuna o que sea relevante para el evento adverso observado. Debe registrarse según el estándar internacional disponible en el país, preferiblemente la DCI (ó International Nonproprietary Name - INN) de la OMS, o, si no existe, un nombre genérico preferido de acuerdo al catálogo WHODrug.
En caso de no contar con WHODrug, se recomienda usar un nombre de acuerdo un catálogo nacional estandarizado, una farmacopea oficial aceptada en el país, o en su defecto, conforme a la autorización de comercialización (i.e. registro sanitario)."
* item[=].item[=].answer.valueCoding = https://paho.org/fhir/ops-esavi/CodeSystem/CodigoMedicamentoCS#00000402192

* item[=].item[+].linkId = "nombreComercialMedicamento"
* item[=].item[=].text = "Corresponde al nombre inventado, de fantasía o de marca, según la autorización de la agencia regulatoria del país incorporado en un catálogo estandarizado( ie WHODrug, catálogo nacional conforme a IDMP, etc), del medicamento usado de manera concomitante con la vacuna o que sea relevante para el evento adverso observado.  En caso de no contar con con el nombre estandarizado se debe seleccionar la opción 'Otro' y registrar el nombre en texto libre."
* item[=].item[=].answer.valueCoding = https://paho.org/fhir/ops-esavi/CodeSystem/CodigoMedicamentoCS#00000402192

* item[=].item[+].linkId = "titularComercializacion"
* item[=].item[=].text = "Corresponde al nombre del laboratorio titular de la autorización de comercialización o registro sanitario (la organización autorizada para comercializar el medicamento en el país) del medicamento utilizado de manera concomitante con la vacuna o que sea relevante para el evento adverso observado, de acuerdo a como se indica en el envase, y conforme al listado utilizado por el país (el más utilizado en farmacovigilancia es WHODrug)."
* item[=].item[=].answer.valueCoding = https://whodrug.ejemplo.com/CodeSystem/WHODrugCS#0002341 "Pfizer"


* item[=].item[+].linkId = "identificadorMedicamento"
* item[=].item[=].text = "Corresponde al código de identificación, de acuerdo a un estándar, del medicamento usado de manera concomitante con la vacuna o que sea relevante para el evento adverso observado. Preferiblemente debe registrarse un MPID (nacional o de WHODrug) y PhPID global, si existen. Si no existen, debe registrar el número de registro sanitario o autorización de comercialización. "
* item[=].item[=].answer.valueCoding = https://mpid.ejemplo.com/CodeSystem/MPIDCS#23241 "MPID3842"

* item[=].item[+].linkId = "formaFarmaceuticaMedicamento"
* item[=].item[=].text = "Corresponde a la presentación del medicamento que la persona estaba tomando al momento de la vacunación."
* item[=].item[=].answer.valueCoding = SCT#46992007

* item[=].item[+].linkId = "cantidadPotenciaMedicamento"
* item[=].item[=].text = "Se refiere a la cantidad del ingrediente activo del medicamento administrado junto con la vacuna o relacionado con un evento adverso. Esta potencia puede expresarse de dos formas:
Presentación: cantidad por unidad del producto, por ejemplo, 10 mg por tableta.
Concentración: cantidad por unidad de volumen o peso, como 4 mg/0,8 ml, según lo indicado en el envase."
* item[=].item[=].answer.valueInteger = 10

* item[=].item[+].linkId = "unidadPotenciaMedicamento"
* item[=].item[=].text = "Se refiere a la cantidad del ingrediente activo del medicamento administrado junto con la vacuna o relacionado con un evento adverso. Esta potencia puede expresarse de dos formas:
Presentación: cantidad por unidad del producto, por ejemplo, 10 mg por tableta.
Concentración: cantidad por unidad de volumen o peso, como 4 mg/0,8 ml, según lo indicado en el envase."
* item[=].item[=].answer.valueCoding = https://ucum.ejemplo.com/CodeSystem/UCUMCS#g/mL "g/mL"

* item[=].item[+].linkId = "cantidadDosisMedicamento"
* item[=].item[=].text = "Corresponde a identificar la cantidad  administrada del medicamento utilizado de manera concomitante con la vacuna o que sean relevantes para el evento adverso observado."
* item[=].item[=].answer.valueInteger = 3

* item[=].item[+].linkId = "unidadDosisMedicamento"
* item[=].item[=].text = "Corresponde a la unidad de la dosis administrada del medicamento utilizado de manera concomitante con la vacuna o que sean relevantes para el evento adverso observado, de acuerdo al estándar internacional (preferiblemente UCUM)."
* item[=].item[=].answer.valueCoding = http://unitsofmeasure.org#g/mL 

* item[=].item[+].linkId = "intervaloNroDosisMedicamento"
* item[=].item[=].text = "Corresponde al  número de intervalo de tiempo de administración del medicamento utilizado de manera concomitante con la vacuna o que sean relevantes para el evento adverso."
* item[=].item[=].answer.valueCoding = http://unitsofmeasure.org#mo

* item[=].item[+].linkId = "intervaloTiempoDosisMedicamento"
* item[=].item[=].text = "Corresponde a la unidad del intervalo de tiempo(horas, semanas,dosis única) entre cada administración del medicamento utilizado de manera concomitante con la vacuna o que sea relevantes para el evento adverso observado, de acuerdo al estándar internacional (preferiblemente UCUM)."
* item[=].item[=].answer.valueCoding = http://unitsofmeasure.org#d

* item[=].item[+].linkId = "viaMedicamento"
* item[=].item[=].text = "Corresponde a identificar la vía de administración de los medicamentos que se administraron."
* item[=].item[=].answer.valueCoding = SCT#738956005

* item[=].item[+].linkId = "fechaMedicamento"
* item[=].item[=].text = "Corresponde a la fecha de inicio de la administración del medicamento."
* item[=].item[=].answer.valueDate = "2024-04-04"

/////////////////////  Grupo embarazo  //////////////////////////////////

* item[+].linkId = "embarazo"
* item[=].text = "Embarazo (persona vacunada es una mujer entre 15 y 49 años o si existe sospecha de embarazo)"

* item[=].item[0].linkId = "embarazoVacunacion"
* item[=].item[=].text = "Si la persona estaba embarazada al momento de recibir la vacuna."
* item[=].item[=].answer.valueBoolean = false 

* item[=].item[+].linkId = "embarazoESAVI"
* item[=].item[=].text = "Si la persona estaba embarazada al momento del ESAVI."
* item[=].item[=].answer.valueBoolean = false 

/////////////////////  Grupo vacunas  //////////////////////////////////

* item[+].linkId = "vacunas"
* item[=].text = "Vacunas"

* item[=].item[0].linkId = "vacunaSospechosa"
* item[=].item[=].text = "Es la vacuna sospechosa de causar el ESAVI. En caso de que la persona haya recibido más de una vacuna, registre la que se sospecha como causante del evento adverso."
* item[=].item[=].answer.valueBoolean = true 

* item[=].item[+].linkId = "nombreComercialVacuna"
* item[=].item[=].text = "Corresponde al nombre inventado, de fantasía o de marca, según la autorización de la agencia regulatoria del país, incorporado en un catálogo estandarizado (ie WhoDrug, catálogo nacional conforme a IDMP, etc) de la vacuna administrada inmediatamente antes del ESAVI. En caso de no contar con el nombre estandarizado se debe seleccionar la opción 'Otro' y registrar el nombre en texto libre."
* item[=].item[=].answer.valueCoding = https://paho.org/fhir/ops-esavi/CodeSystem/WHODrugCS#00000101041

* item[=].item[+].linkId = "nombreGenericoVacuna"
* item[=].item[=].text = "Corresponde a la denominación común oficial, recomendada por la OMS, de la vacuna administrada inmediatamente antes del ESAVI. Debe registrarse según el estándar internacional disponible en el país, preferiblemente la DCI (ó International Nonproprietary Name - INN) de la OMS.  En caso de no existir, se sugiere el uso de un nombre genérico preferido de acuerdo al catálogo WHODrug."
* item[=].item[=].answer.valueCoding = https://paho.org/fhir/ops-esavi/CodeSystem/WHODrugCS#00000101041

* item[=].item[+].linkId = "nombreDescriptivoVacuna"
* item[=].item[=].text = "Corresponde a la denominación común oficial, recomendada por la OMS, que describe  el tipo específico de vacuna administrada inmediatamente antes del ESAVI( puede contener las enfermedades con las que protege, valencia, tipo de plataforma, etc). Debe registrarse según el estándar internacional disponible en el país, preferiblemente un nombre internacional (propio) recomendado por el ECBS de la OMS, que describe un tipo específico de vacuna, y no representa su marca o nombre comercial."
* item[=].item[=].answer.valueCoding = https://paho.org/fhir/ops-esavi/CodeSystem/WHODrugCS#00000101041

* item[=].item[+].linkId = "identificadorVacuna"
* item[=].item[=].text = "Corresponde al código de identificación, de acuerdo a un estándar, de la vacuna administrada inmediatamente antes del ESAVI. Preferiblemente debe registrarse un MPID (nacional o de WHODrug) y PhPID global, si existen. Si no existen, debe registrar el número de registro sanitario, autorización de comercialización o su equivalente."
* item[=].item[=].answer.valueCoding = https://identificador.vacuna.com/CodeSystem/VCIDCS#0012314 "VCID12314"

* item[=].item[+].linkId = "cantidadPotenciaVacuna"
* item[=].item[=].text = "Corresponde a la cantidad de la composición cuantitativa del ingrediente activo de la vacuna administrada antes dele evento observado"
* item[=].item[=].answer.valueInteger = 1

* item[=].item[+].linkId = "unidadPotenciaVacuna"
* item[=].item[=].text = "Corresponde a la unidad de la composición cuantitativa del ingrediente activo de la vacuna administrada antes dele evento observado. Se recomienda el catálogo UCUM"
* item[=].item[=].answer.valueCoding = http://unitsofmeasure.org#g/mL 

* item[=].item[+].linkId = "formaFarmaceuticaVacuna"
* item[=].item[=].text = "Corresponde a la descripción de la presentación o manifestación física de la vacuna administrada antes del ESAVI. Debe describirse la forma farmacéutica de dosificación de la vacuna tal como ha sido fabricado, antes de ser transformado en el producto farmacéutico a administrar, de acuerdo al estandar internacional vigente, preferiblemente, usando términos estándar EDQM."
* item[=].item[=].answer.valueCoding = SCT#46992007

* item[=].item[+].linkId = "nombreFabricante"
* item[=].item[=].text = "Corresponde al nombre del fabricante de las vacunas administradas inmediatamente antes del ESAVI y en el caso de COVID19 las vacunas aplicadas como parte del esquema completo."
* item[=].item[=].answer.valueString = "Pfizer BioNTech"

/* * item[=].item[+].linkId = "codigoVacuna"
* item[=].item[=].text = "Corresponde al codigo de la vacuna vacunas administradas inmediatamente antes del ESAVI."
* item[=].item[=].answer.valueCoding = https://paho.org/fhir/ops-esavi/CodeSystem/WHODrugCS#00000301014 */

* item[=].item[+].linkId = "fechaAdministracion"
* item[=].item[=].text = "Corresponde al dia de aplicacion de la vacuna de referencia"
* item[=].item[=].answer.valueDate = "2024-03-30"

* item[=].item[+].linkId = "horaAdministracion"
* item[=].item[=].text = "Corresponde a la hora de aplicacion de la vacuna de referencia."
* item[=].item[=].answer.valueTime = "14:15:00"

* item[=].item[+].linkId = "dosisVacuna"
* item[=].item[=].text = "Corresponde al orden de la dosis de la vacuna que se consigna para el ESAVI."
* item[=].item[=].answer.valueInteger = 3

* item[=].item[+].linkId = "cantidadDosisVacuna"
* item[=].item[=].text = "Corresponde a identificar la cantidad  administrada de la vacuna administrada inmediatamente antes del ESAVI."
* item[=].item[=].answer.valueInteger = 1

* item[=].item[+].linkId = "unidadDosisVacuna"
* item[=].item[=].text = "Corresponde a identificar la unidad administrada de la vacuna administrada inmediatamente antes del ESAVI. Se recomienda el catáligo UCUM."
* item[=].item[=].answer.valueCoding = http://unitsofmeasure.org#g/mL 

* item[=].item[+].linkId = "viaVacuna"
* item[=].item[=].text = "Corresponde a la vía por la que la vacuna es administrada(ingresa al cuerpo). Debe registrarse de acuerdo al estándar internacional (preferiblemente términos estándar EDQM)."
* item[=].item[=].answer.valueCoding = SCT#738956005

* item[=].item[+].linkId = "lote"
* item[=].item[=].text = "Corresponde al lote de la vacuna que se consigna para el ESAVI, indicado por el fabricante."
* item[=].item[=].answer.valueString = "AB1234"

* item[=].item[+].linkId = "fechaVencimientoVacuna"
* item[=].item[=].text = "Corresponde a la fecha de vencimiento de la vacuna que se consigna para el ESAVI, indicada por el fabricante."
* item[=].item[=].answer.valueDate = "2026-04-26"

/* * item[=].item[+].linkId = "existeOtraVacunacion"
* item[=].item[=].text = "Administración de otra vacuna, distinta a la registrada anteriormente, en los 30 días previos al inicio de los síntomas del ESAVI que se está notificando."
* item[=].item[=].answer.valueBoolean = false */

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

