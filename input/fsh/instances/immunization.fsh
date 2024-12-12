Instance: ExampleImmunizationCovid19
InstanceOf: ImmunizationVaccine
Title: "Exemplo Immunization - Vacinação contra COVID-19"
Description: "Exemplo de um registro de imunização representando a vacinação contra COVID-19."

* status = #completed
* vaccineCode.text = "Vacina COVID-19"
* patient = Reference(Patient/exemplo-patient-1)
* occurrenceDateTime = "2024-09-11"
