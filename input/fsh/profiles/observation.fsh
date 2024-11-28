Profile: ObservationSymptomDurationBodySite
Parent: Observation
Id: observation-symptom-duration-body-site
Title: "Observation - Symptoms Duration And Body Site"
Description: "Este perfil representa as restrições aplicadas ao recurso Observation pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS).
Descreve as expectativas mínimas para o recurso Observation quando utilizado na composição do sistema ou em um dos recursos referidos.
É utilizado para representar a duração dos sintomas e o local no corpo onde estão localizados."
* code.coding.system = "http://loinc.org" (exactly)
* code.coding.code = #64748-7 (exactly)
* code.coding.display = "Symptoms Duration"
* encounter 1..
* value[x] ^short = "Symptoms duration"
* value[x] only Quantity
* bodySite from $bodySiteVS

Profile: ObservationSymptom
Parent: Observation
Id: observation-symptom
Title: "Observation - Symptom"
Description: "Este perfil representa as restrições aplicadas ao recurso Observation pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS).
Descreve as expectativas mínimas para o recurso Observation quando utilizado na composição do sistema ou em um dos recursos referidos.
É utilizado para representar os sintomas."
* status = #final
* code.coding.system = "http://loinc.org" (exactly)
* code.coding.code = #75325-1 (exactly)
* code.coding.display = "Symptom" (exactly)
* value[x] from $symptomsVS
* value[x] only CodeableConcept
* encounter 1..
* note MS
* note.text MS
* component MS
* component.code.coding.code from $symptomPropertiesCS
* component.value[x] MS

Profile: ObservationSymptomSeverity
Parent: Observation
Id: observation-symptom-severity
Title: "Observation - Severity Symptom"
Description: "Este perfil representa as restrições aplicadas ao recurso Observation pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS).
Descreve as expectativas mínimas para o recurso Observation quando utilizado na composição do sistema ou em um dos recursos referidos.
É utilizado para representar os sintomas severos."

* status = #final
* code MS
* code.coding MS
* code.coding.system = "http://loinc.org" (exactly)
* code.coding.code = #64750-3 (exactly)
* code.coding.display = "Severity of symptoms" (exactly)
* value[x] only CodeableConcept
* value[x].coding MS
* valueCodeableConcept MS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code from $severitySymptomsVs

* component MS
* component.code.coding.code from $symptomPropertiesVS
* component.value[x] MS


Alias: $bodySiteVS = https://ehr.p5.pt/api/fhir/ValueSet/bodySite
Alias: $symptomsVS = https://ehr.p5.pt/api/fhir/ValueSet/symptoms
Alias: $severitySymptomsVs = https://ehr.p5.pt/api/fhir/ValueSet/severity-symptoms
Alias: $symptomPropertiesVS = https://ehr.p5.pt/api/fhir/ValueSet/symptom-properties
Alias: $symptomPropertiesCS = http://example.com/fhir/example/CodeSystem/symptom-properties