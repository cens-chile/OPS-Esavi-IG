CodeSystem: ProfesionalNotificadorCS
Id: ProfesionalNotificadorCS
Title: "Tipo de Profesional Notificador"
Description: "Códigos de Tipo de Notificadores de ESAVI para PAHO"
* ^version = "1.0.0"
* ^status = #active
* ^content = #complete
* ^count = 6
* ^experimental = false
* ^caseSensitive = false
* #1 "Médico"
* #2 "Farmacéutico"
* #3 "Otro Profesional de la Salud"
* #4 "Abogado"
* #5 "Usuario u otro profesional no sanitario"
* #6 "No definido por el usuario"

CodeSystem: GrupoEtnicoCS
Id: GrupoEtnicoCS
Title: "Grupo étnico"
Description: "Códigos de Grupo étnicos, considerando solo una pequeña cantidad a modo de ejemplo"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = false
* #101 "Qom"
* #102 "Aymara"
* #103 "Quechua"
* #104 "Guarani"
* #105 "Tupi"
* #106 "Cree"
* #107 "Inuit"
* #108 "Mapuche"
* #109 "Diaguita"
* #110 "Wayuu"
* #111 "Embera"
* #112 "Bribri"
* #113 "Cabécar"
* #114 "Taíno"
* #115 "Shuar"
* #116 "Achuar"
* #117 "Pipil"
* #118 "Maya"
* #119 "Garífuna"
* #120 "Lenka"
* #121 "Tolupán"
* #122 "Nahua"
* #123 "Zapoteco"
* #124 "Miskito"
* #125 "Rama"
* #126 "Guna"
* #127 "Ngöbe"
* #128 "Guarani"
* #129 "Quechua"
* #130 "Shipibo-Conibo"
* #131 "Navajo"
* #132 "Cherokee"
* #133 "Chaná"
* #134 "Yanomami"
* #135 "Warao"

CodeSystem: CargoCS
Id: CargoCS
Title: "Cargos"
Description: "Cargos dentro de una organizacion"
* ^status = #active
* ^content = #complete
* #1 "Médico"
* #2 "Enfermero"
* #3 "Farmacéutico"
* #4 "Técnico"
* #5 "Abogado"
* #0 "Otro"

CodeSystem: FormaVerificacionCS
Id: FormaVerificacionCS
Title: "Forma de Verificación"
Description: "Formas de verificación posibles, a modo de ejemplo"
* ^status = #active
* ^content = #complete
* #1 "Carnet o registro físico"
* #2 "Carnet o registro digital"
* #3 "Declaración verbal"
* #4 "Historia clínica corroborada con carnet"
* #5 "No se sabe"
* #0 "Otro"

CodeSystem: NombreESAVICS
Id: NombreESAVICS
Title: "Nombre de ESAVI"
Description: "Códigos de eventos supuestamente atribuibles a la vacunación o inmunización (ESAVI)"
* ^status = #active
* ^content = #complete
* #1 "Fiebre >= 38°C"
* #2 "Dolor en el sitio de la inyección"
* #3 "Eritema en el sitio de la inyección"
* #4 "Inflamación en el sitio de la inyección"
* #5 "Cefalea"
* #6 "Convulsiones febriles"
* #7 "Absceso"
* #8 "Linfadenitis"
* #9 "Encefalopatía"
* #10 "Encefalitis"
* #11 "Trombocitopenia"
* #12 "Anafilaxia"
* #13 "Síndrome de shock tóxico"
* #14 "Sepsis"
* #0 "Otro"

CodeSystem: ClasificacionDesenlaceCS 
Id: ClasificacionDesenlaceCS
Title: "Desenlaces Tras ESAVI"
Description:  "Clasificación de Desenlace Tras Sufrir ESAVI"
* ^status = #active
* ^content = #complete
* #1 "Recuperado Completamente"
* #2 "En recuperación"
* #3 "No recuperado"
* #4 "Recuperado con secuelas"
* #0 "Desconocido"