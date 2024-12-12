Profile: ImmunizationVaccine
Parent: Immunization
Id: immunization-vaccine
Title: "Immunization - Vacinação"
Description: "Um perfil para representar informações de imunização ou vacinação de um paciente."

* status 1..1 MS
* status = #completed
* vaccineCode 1..1 MS
* vaccineCode.text 1..1
* patient 1..1 MS
* patient only Reference(Patient)
* occurrence[x] 1..1
* occurrenceDateTime 1..1
