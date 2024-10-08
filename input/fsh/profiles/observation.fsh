Profile: ObservationSymptomDuration
Parent: Observation
Id: ObservationSymptomDuration
Title: "Observation - Symptoms Duration"
Description: "Este perfil representa as restrições aplicadas ao recurso Observation pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS).
Descreve as expectativas mínimas para o recurso Observation quando utilizado na composição do sistema ou em um dos recursos referidos.
É utilizado para representar a duração dos sintomas e o local no corpo onde estão localizados."
* code = LNC#64748-7
* encounter 1..
* value[x] ^short = "Symptoms duration"
* value[x] only Quantity
* bodySite from $bodySiteVS

Profile: ObservationSymptoms
Parent: Observation
Id: ObservationSymptoms
Title: "Observation - Symptoms"
Description: "Este perfil representa as restrições aplicadas ao recurso Observation pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS).
Descreve as expectativas mínimas para o recurso Observation quando utilizado na composição do sistema ou em um dos recursos referidos.
É utilizado para representar os sintomas."
* code from $symptomsVS
* encounter 1..
* value[x] only string

Alias:  LNC = http://loinc.org
Alias: $bodySiteVS = https://ehr.p5.pt/api/fhir/ValueSet/bodySite
Alias: $symptomsVS = https://ehr.p5.pt/api/fhir/ValueSet/bodySite