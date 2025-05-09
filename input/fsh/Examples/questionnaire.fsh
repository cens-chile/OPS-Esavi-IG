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
* item[=].item[=].linkId = "nombreGenericoMedicamento"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/CodigoMedicamentoVS" 
* item[=].item[=].text = "Corresponde al nombre común o denominación común internacional oficial recomendada por la OMS de un medicamento usado de manera concomitante con la vacuna o que sea relevante para el evento adverso observado. Debe registrarse según el estándar internacional disponible en el país, preferiblemente la DCI (ó International Nonproprietary Name - INN) de la OMS, o, si no existe, un nombre genérico preferido de acuerdo al catálogo WHODrug.
En caso de no contar con WHODrug, se recomienda usar un nombre de acuerdo un catálogo nacional estandarizado, una farmacopea oficial aceptada en el país, o en su defecto, conforme a la autorización de comercialización (i.e. registro sanitario)."

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "nombreComercialMedicamento"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/CodigoMedicamentoVS" 
* item[=].item[=].text = "Corresponde al nombre inventado, de fantasía o de marca, según la autorización de la agencia regulatoria del país incorporado en un catálogo estandarizado( ie WHODrug, catálogo nacional conforme a IDMP, etc), del medicamento usado de manera concomitante con la vacuna o que sea relevante para el evento adverso observado.  En caso de no contar con con el nombre estandarizado se debe seleccionar la opción 'Otro' y registrar el nombre en texto libre."

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "titularComercializacion"
* item[=].item[=].text = "Corresponde al nombre del laboratorio titular de la autorización de comercialización o registro sanitario (la organización autorizada para comercializar el medicamento en el país) del medicamento utilizado de manera concomitante con la vacuna o que sea relevante para el evento adverso observado, de acuerdo a como se indica en el envase, y conforme al listado utilizado por el país (el más utilizado en farmacovigilancia es WHODrug)."

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "identificadorMedicamento"
* item[=].item[=].text = "Corresponde al código de identificación, de acuerdo a un estándar, del medicamento usado de manera concomitante con la vacuna o que sea relevante para el evento adverso observado. Preferiblemente debe registrarse un MPID (nacional o de WHODrug) y PhPID global, si existen. Si no existen, debe registrar el número de registro sanitario o autorización de comercialización. "

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "formaFarmaceuticaMedicamento"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/FormaFarmaceuticaVS" 
* item[=].item[=].text = "Corresponde a la presentación del medicamento que la persona estaba tomando al momento de la vacunación."

* item[=].item[+].type = #integer 
* item[=].item[=].required = true
* item[=].item[=].linkId = "cantidadPotenciaMedicamento"
* item[=].item[=].text = "Se refiere a la cantidad del ingrediente activo del medicamento administrado junto con la vacuna o relacionado con un evento adverso. Esta potencia puede expresarse de dos formas:
Presentación: cantidad por unidad del producto, por ejemplo, 10 mg por tableta.
Concentración: cantidad por unidad de volumen o peso, como 4 mg/0,8 ml, según lo indicado en el envase."

* item[=].item[+].type = #choice
* item[=].item[=].required = true
* item[=].item[=].linkId = "unidadPotenciaMedicamento"
* item[=].item[=].text = "Se refiere a la cantidad del ingrediente activo del medicamento administrado junto con la vacuna o relacionado con un evento adverso. Esta potencia puede expresarse de dos formas:
Presentación: cantidad por unidad del producto, por ejemplo, 10 mg por tableta.
Concentración: cantidad por unidad de volumen o peso, como 4 mg/0,8 ml, según lo indicado en el envase."

* item[=].item[+].type = #integer
* item[=].item[=].required = true
* item[=].item[=].linkId = "cantidadDosisMedicamento"
* item[=].item[=].text = "Corresponde a identificar la cantidad  administrada del medicamento utilizado de manera concomitante con la vacuna o que sean relevantes para el evento adverso observado."

* item[=].item[+].type = #choice
* item[=].item[=].required = true
* item[=].item[=].linkId = "unidadDosisMedicamento"
* item[=].item[=].text = "Corresponde a la unidad de la dosis administrada del medicamento utilizado de manera concomitante con la vacuna o que sean relevantes para el evento adverso observado, de acuerdo al estándar internacional (preferiblemente UCUM)."

* item[=].item[+].type = #choice
* item[=].item[=].required = true
* item[=].item[=].linkId = "intervaloNroDosisMedicamento"
* item[=].item[=].text = "Corresponde al  número de intervalo de tiempo de administración del medicamento utilizado de manera concomitante con la vacuna o que sean relevantes para el evento adverso."

* item[=].item[+].type = #choice
* item[=].item[=].required = true
* item[=].item[=].linkId = "intervaloTiempoDosisMedicamento"
* item[=].item[=].text = "Corresponde a la unidad del intervalo de tiempo(horas, semanas,dosis única) entre cada administración del medicamento utilizado de manera concomitante con la vacuna o que sea relevantes para el evento adverso observado, de acuerdo al estándar internacional (preferiblemente UCUM)."

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "viaMedicamento"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/ViaAdminMedicamentoVS" 
* item[=].item[=].text = "Corresponde a identificar la vía de administración de los medicamentos que se administraron."

* item[=].item[+].type = #date
* item[=].item[=].required = true
* item[=].item[=].linkId = "fechaMedicamento"
* item[=].item[=].text = "Corresponde a la fecha de inicio de la administración del medicamento."


/////////////////////  Grupo embarazo  //////////////////////////////////

* item[+].type = #group
* item[=].required = true
* item[=].repeats = true 
* item[=].linkId = "embarazo"
* item[=].text = "Embarazo (persona vacunada es una mujer entre 15 y 49 años o si existe sospecha de embarazo)"

* item[=].item[0].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].linkId = "embarazoVacunacion"
* item[=].item[=].text = "Si la persona estaba embarazada al momento de recibir la vacuna."

* item[=].item[+].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].linkId = "embarazoESAVI"
* item[=].item[=].text = "Si la persona estaba embarazada al momento del ESAVI."

* item[=].item[+].type = #date
* item[=].item[=].required = false
* item[=].item[=].linkId = "fechaUltimaMenstruacion"
* item[=].item[=].text = "Registra la fecha que indica la mujer o su historia clínica como el primer día de la última menstruación del embarazo al momento de la vacunación o del ESAVI según corresponda."

* item[=].item[+].type = #integer
* item[=].item[=].required = false
* item[=].item[=].linkId = "semanasGestacion"
/* * item[=].enableWhen[=].question = "embarazoVacunacion"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerBoolean = true */
* item[=].item[=].text = "Semana de gestación en el momento del ESAVI"

* item[=].item[+].type = #date
* item[=].item[=].required = false
* item[=].item[=].linkId = "fechaProbableParto"
* item[=].item[=].text = "Fecha probable de parto calculada a partir de la fecha de la última menstruación o ecografia de primer trimestre. En muchas ocasiones las mujeres embarazadas más que la FUM."

* item[=].item[+].type = #string
* item[=].item[=].required = false
* item[=].item[=].linkId = "seguimientoEmbarazo"
* item[=].item[=].text = "Describe si fue realizado seguimiento de la gestante vacunada en  una institución de salud."

* item[=].item[+].type = #string
* item[=].item[=].required = false
* item[=].item[=].linkId = "complicacionesEmbarazo"
* item[=].item[=].text = "Presencia de complicaciones durante el embarazo, parto, puerperio, complicaciones neonatales o anomalias congénitas depués de la vacunación."

* item[=].item[+].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = true 
* item[=].item[=].linkId = "diagnosticoComplicacionFetal"
* item[=].item[=].text = "Registro del diagnóstico de la complicación fetal o neonatal o anomalía congénita identificada posterior a la vacunación de la gestante de acuerdo al estándar."

* item[=].item[+].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = true 
* item[=].item[=].linkId = "codigoDiagnosticoComplicacionFetal"
* item[=].item[=].text = "Corresponde al código del diagnóstico de la complicación fetal o neonatal o anomalía congénita identificada posterior a la vacunación de la gestante según el estándar utilizado por el país ( los más utilizados en farmacovigilancia son MedDRA/CIE 11/SNOMED). Usualmente se utiliza el nivel  más bajo de la jerarquía del estándar. Por ejemplo en el caso del estándar MedDRA se utiliza el  código LLT."


* item[=].item[+].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = true 
* item[=].item[=].linkId = "diagnosticoComplicacionEmbarazo"
* item[=].item[=].text = "Registro del diagnóstico de la complicación durante el embarazo de acuerdo al estándar ( los más utilizados en farmacovigilancia son MedDRA/CIE 11/SNOMED). Usualmente se utiliza el nivel más bajo de la jerarquía del estándar. Por ejemplo en el caso del estándar MedDRA se utiliza el código LLT."

* item[=].item[+].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = true 
* item[=].item[=].linkId = "codigoComplicacionEmbarazo"
* item[=].item[=].text = "Código del registro del diagnóstico de la complicación durante el embarazo, parto o puerperio de acuerdo al estándar ( los más utilizados en farmacovigilancia son MedDRA/CIE 11/SNOMED). Usualmente se utiliza el nivel  más bajo de la jerarquía del estándar. Por ejemplo en el caso del estándar MedDRA se utiliza el  código LLT."

* item[=].item[+].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = true 
* item[=].item[=].linkId = "diagnosticoComplicacionParto"
* item[=].item[=].text = "Registro del diagnóstico de la complicación durante el parto de acuerdo al estándar ( los más utilizados en farmacovigilancia son MedDRA/CIE 11/SNOMED). Usualmente se utiliza el nivel más bajo de la jerarquía del estándar. Por ejemplo en el caso del estándar MedDRA se utiliza el código LLT."

* item[=].item[+].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = true 
* item[=].item[=].linkId = "codigoComplicacionParto"
* item[=].item[=].text = "Código del registro del diagnóstico de la complicación durante el parto o puerperio de acuerdo al estándar ( los más utilizados en farmacovigilancia son MedDRA/CIE 11/SNOMED). Usualmente se utiliza el nivel  más bajo de la jerarquía del estándar. Por ejemplo en el caso del estándar MedDRA se utiliza el  código LLT."

/////////////////////  Grupo vacunas  //////////////////////////////////

* item[+].type = #group
* item[=].required = true
* item[=].repeats = true 
* item[=].linkId = "vacunas"
* item[=].text = "Vacunas"

* item[=].item[0].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].linkId = "vacunaSospechosa"
* item[=].item[=].text = "Es la vacuna sospechosa de causar el ESAVI. En caso de que la persona haya recibido más de una vacuna, registre la que se sospecha como causante del evento adverso."

* item[=].item[+].type = #choice
* item[=].item[=].required = true
* item[=].item[=].linkId = "nombreComercialVacuna"
* item[=].item[=].text = "Corresponde al nombre inventado, de fantasía o de marca, según la autorización de la agencia regulatoria del país, incorporado en un catálogo estandarizado (ie WhoDrug, catálogo nacional conforme a IDMP, etc) de la vacuna administrada inmediatamente antes del ESAVI. En caso de no contar con el nombre estandarizado se debe seleccionar la opción 'Otro' y registrar el nombre en texto libre."

* item[=].item[+].type = #choice
* item[=].item[=].required = true
* item[=].item[=].linkId = "nombreGenericoVacuna"
* item[=].item[=].text = "Corresponde a la denominación común oficial, recomendada por la OMS, de la vacuna administrada inmediatamente antes del ESAVI. Debe registrarse según el estándar internacional disponible en el país, preferiblemente la DCI (ó International Nonproprietary Name - INN) de la OMS.  En caso de no existir, se sugiere el uso de un nombre genérico preferido de acuerdo al catálogo WHODrug."

* item[=].item[+].type = #choice
* item[=].item[=].required = true
* item[=].item[=].linkId = "nombreDescriptivoVacuna"
* item[=].item[=].text = "Corresponde a la denominación común oficial, recomendada por la OMS, que describe  el tipo específico de vacuna administrada inmediatamente antes del ESAVI( puede contener las enfermedades con las que protege, valencia, tipo de plataforma, etc). Debe registrarse según el estándar internacional disponible en el país, preferiblemente un nombre internacional (propio) recomendado por el ECBS de la OMS, que describe un tipo específico de vacuna, y no representa su marca o nombre comercial."

* item[=].item[+].type = #choice
* item[=].item[=].required = true
* item[=].item[=].linkId = "identificadorVacuna"
* item[=].item[=].text = "Corresponde al código de identificación, de acuerdo a un estándar, de la vacuna administrada inmediatamente antes del ESAVI. Preferiblemente debe registrarse un MPID (nacional o de WHODrug) y PhPID global, si existen. Si no existen, debe registrar el número de registro sanitario, autorización de comercialización o su equivalente."

* item[=].item[+].type = #integer 
* item[=].item[=].required = true
* item[=].item[=].linkId = "cantidadPotenciaVacuna"
* item[=].item[=].text = "Corresponde a la cantidad de la composición cuantitativa del ingrediente activo de la vacuna administrada antes dele evento observado"

* item[=].item[+].type = #choice
* item[=].item[=].required = true
* item[=].item[=].linkId = "unidadPotenciaVacuna"
* item[=].item[=].text = "Corresponde a la unidad de la composición cuantitativa del ingrediente activo de la vacuna administrada antes dele evento observado. Se recomienda el catálogo UCUM"

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "formaFarmaceuticaVacuna"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/FormaFarmaceuticaVS" 
* item[=].item[=].text = "Corresponde a la descripción de la presentación o manifestación física de la vacuna administrada antes del ESAVI. Debe describirse la forma farmacéutica de dosificación de la vacuna tal como ha sido fabricado, antes de ser transformado en el producto farmacéutico a administrar, de acuerdo al estandar internacional vigente, preferiblemente, usando términos estándar EDQM."

* item[=].item[+].type = #choice
* item[=].item[=].required = false
* item[=].item[=].linkId = "nombreTitularComercializacionVacuna"
* item[=].item[=].text = "Corresponde al nombre del laboratorio titular del registro sanitario o autorización de comercialización (la organización autorizada para comercializar la vacuna en el país)  de la vacuna administrada inmediatamente antes del ESAVI. El nombre del titular se recomienda registrar de acuerdo al envase, y conforme al listado utilizado por el país (el más utilizado en farmacovigilancia es WHODrug). "

* item[=].item[+].type = #string
* item[=].item[=].required = true
* item[=].item[=].linkId = "nombreFabricante"
* item[=].item[=].text = "Corresponde al nombre del fabricante de las vacunas administradas inmediatamente antes del ESAVI y en el caso de COVID19 las vacunas aplicadas como parte del esquema completo."

/* * item[=].item[+].type = #choice 
* item[=].item[=].required = false
* item[=].item[=].linkId = "codigoVacuna"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/CodigoWhoVacunaVS"
* item[=].item[=].text = "Corresponde al codigo de la vacuna vacunas administradas inmediatamente antes del ESAVI." */

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
* item[=].item[=].linkId = "dosisVacuna"
* item[=].item[=].text = "Corresponde al orden de la dosis de la vacuna que se consigna para el ESAVI."

* item[=].item[+].type = #integer 
* item[=].item[=].required = true
* item[=].item[=].linkId = "cantidadDosisVacuna"
* item[=].item[=].text = "Corresponde a identificar la cantidad  administrada de la vacuna administrada inmediatamente antes del ESAVI."

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "unidadDosisVacuna"
* item[=].item[=].text = "Corresponde a identificar la unidad administrada de la vacuna administrada inmediatamente antes del ESAVI. Se recomienda el catáligo UCUM."

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "viaVacuna"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/ViaAdminMedicamentoVS" 
* item[=].item[=].text = "Corresponde a la vía por la que la vacuna es administrada(ingresa al cuerpo). Debe registrarse de acuerdo al estándar internacional (preferiblemente términos estándar EDQM)."

* item[=].item[+].type = #string
* item[=].item[=].required = true
* item[=].item[=].linkId = "lote"
* item[=].item[=].text = "Corresponde al lote de la vacuna que se consigna para el ESAVI, indicado por el fabricante."

* item[=].item[+].type = #date
* item[=].item[=].required = true
* item[=].item[=].linkId = "fechaVencimientoVacuna"
* item[=].item[=].text = "Corresponde a la fecha de vencimiento de la vacuna que se consigna para el ESAVI, indicada por el fabricante."

* item[=].item[+].type = #choice 
* item[=].item[=].required = false
* item[=].item[=].linkId = "nombreDiluyenteVacuna"
* item[=].item[=].text = "Corresponde al nombre del diluyente de la vacuna que se consigna para el ESAVI."

* item[=].item[+].type = #choice 
* item[=].item[=].required = false
* item[=].item[=].linkId = "identificadorDiluyenteVacuna"
* item[=].item[=].text = "Corresponde al código de identificación, de acuerdo a un estándar, del diluyente usado para reconstituir la vacuna administrada inmediatamente antes del ESAVI. Preferiblemente debe registrarse un MPID (nacional o de WHODrug) si existen. Si no existen, debe registrar el número de registro sanitario, autorización de comercialización o su equivalente."

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

* item[=].item[+].type = #time
* item[=].item[=].required = false
* item[=].item[=].linkId = "horaReconstitucion"
* item[=].item[=].text = "Hora (en formato de 24 horas) en la que se combinó el diluyente y la vacuna para ser administrada."


/* * item[=].item[+].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].linkId = "existeOtraVacunacion"
* item[=].item[=].text = "Administración de otra vacuna, distinta a la registrada anteriormente, en los 30 días previos al inicio de los síntomas del ESAVI que se está notificando."

* item[=].item[+].type = #string
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "otraVacunaNombre"
* item[=].item[=].text = "Descripción de otra vacuna administrada en los 30 días anteriores." */

* item[=].item[+].type = #choice 
* item[=].item[=].required = true
* item[=].item[=].linkId = "formaDeVerificacion"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/FormaVerificacionVS"
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

* item[=].item[+].type = #date 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "fechaInicio"
* item[=].item[=].text = "Corresponde a la fecha de inicio de síntomas/signos/hallazgo anormal de laboratorio/enfermedad referido por el paciente o identificado por el médico tratante."

* item[=].item[+].type = #time 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "horaInicio"
* item[=].item[=].text = "Corresponde a la Hora de inicio de síntomas/signos/hallazgo anormal de laboratorio/enfermedad referido por el paciente o identificado por el médico tratante"


* item[=].item[+].type = #choice 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "codigoTerminoESAVI"
* item[=].item[=].text = "Código estandarizado para la codificación del diagnóstico de la situación de salud notificada (el más utilizado en farmacovigilancia es MedDRA)."

/* * item[=].item[+].type = #choice
* item[=].item[=].required = false 
* item[=].item[=].linkId = "codigoMedDRA"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/CodigoMeDRAAntecedenteVS" 
* item[=].item[=].text = "Código estandarizado para la codificación del diagnóstico de la situación de salud notificada."

* item[=].item[+].type = #string 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "codigoCIE"
* item[=].item[=].text = "Código estandarizado para la codificación del diagnóstico. Se puede usar." */

* item[=].item[+].type = #string 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "descripcionSintomas"
* item[=].item[=].text = "Síntomas tal como los describe el paciente o la paciente, y los signos clínicos del evento, e incluya también los resultados de las pruebas de laboratorio y de imagen realizadas que sean relevantes)."

* item[=].item[+].type = #string 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "informacionAdicional"
* item[=].item[=].text = "Comentarios o información adicional que considere importante y que no haya registrado en los apartados anteriores"

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

* item[=].item[+].type = #choice 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "condicionResultante"
* item[=].item[=].answerValueSet = "https://paho.org/fhir/ops-esavi/ValueSet/ClasificacionDesenlaceVS"
* item[=].item[=].text = "Categorías de desenlace del ESAVI."

/////////////////////  Grupo datosMuerte  //////////////////////////////////

* item[+].type = #group
* item[=].required = false
* item[=].linkId = "datosMuerte"
* item[=].text = "Datos útiles en caso de muerte"

* item[=].item[0].type = #date
* item[=].item[=].required = false
* item[=].item[=].linkId = "fechaMuerte"
* item[=].item[=].text = "Corresponde a la fecha de muerte"

* item[=].item[+].type = #boolean
* item[=].item[=].required = false 
* item[=].item[=].linkId = "autopsiaRealizada"
* item[=].item[=].text = " Indica si se ha solicitado la realización de una autopsia en el contexto de un fallecimiento, con el propósito de determinar la causa de muerte y otros hallazgos relevantes"

* item[=].item[+].type = #string
* item[=].item[=].required = false 
* item[=].item[=].linkId = "informeAutopsia"
* item[=].item[=].text = "Informe de autopsia."

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
* item[=].item[=].required = false //true if investigacionRequerida = true
* item[=].item[=].linkId = "fechaPrevistaInicioInvestigacion"
* item[=].item[=].text = "Fecha prevista para el inicio de la investigación"

* item[=].item[+].type = #date
* item[=].item[=].required = false //true if investigacionRequerida = true
* item[=].item[=].linkId = "fechaInicioInvestigacion"
* item[=].item[=].text = "Fecha de inicio de la investigación"

/////////////////////  Grupo apartadoNivelNacional  //////////////////////////////////

* item[+].type = #group
* item[=].required = false
* item[=].linkId = "apartadoNivelNacional"
* item[=].text = "Apartado que debe completar el nivel nacional"

* item[=].item[0].type = #date
* item[=].item[=].required = false
* item[=].item[=].linkId = "fechaRecepcionNacional"
* item[=].item[=].text = "Fecha en que el nivel nacional recibió la notificación."

* item[=].item[+].type = #string 
* item[=].item[=].required = false 
* item[=].item[=].linkId = "comentarios"
* item[=].item[=].text = "Comentarios o información adicional que considere importante y que no haya registrado en los apartados anteriores."