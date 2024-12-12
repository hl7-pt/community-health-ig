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

Profile: ObservationNumberHealthcareVisitsLast12Months
Parent: Observation
Id: observation-number-healthcare-visits-last-12-months
Title: "Observation - Número de visitas a unidades de saúde nos últimos 12 Meses"
Description: "Um perfil para representar o número de visitas a unidades de saúde nos últimos 12 meses."

* status 1..1 MS
* status = #registered
* code 1..1 MS
* code.coding 1..1
* code.coding.system = "http://ehr.p5.pt/ValueSet/observation-values"
* code.coding.code = #healthcare-visits-12-months
* code.coding.display = "Numero de visitas a uma unidade de saude nos ultimos 12 meses"
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] 1..1
* effectiveDateTime 1..1
* value[x] 1..1
* valueInteger 1..1

RuleSet: ObservationComponentSlicingRules
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"

Profile: ObservationPregnancy
Parent: Observation
Id: observation-pregnancy
Title: "Observation - Gravidez"
Description: "Um perfil para representar informações sobre gravidez de uma paciente, incluindo idade gestacional, número de gestações e número de filhos."

* status 1..1
* status = #registered
* code 1..1
* code.coding 1..1
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #77386006
* code.coding.display = "Pregnant"
* subject 1..1
* subject only Reference(Patient)
* component 1..*
* insert ObservationComponentSlicingRules
* component contains gestationalAge 0..1 MS and pregnancyNumber 0..1 MS and numberOfChild 0..1 MS

* component[gestationalAge].code.coding.system = "http://loinc.org"
* component[gestationalAge].code.coding.code = #49051-6
* component[gestationalAge].code.coding.display = "Gestational age in weeks"
* component[gestationalAge].valueQuantity 1..1
* component[gestationalAge].valueQuantity.unit = "weeks"
* component[gestationalAge].valueQuantity.system = "http://unitsofmeasure.org"
* component[gestationalAge].valueQuantity.code = #wk

* component[pregnancyNumber].code.coding.system = "http://loinc.org"
* component[pregnancyNumber].code.coding.code = #63962-5
* component[pregnancyNumber].code.coding.display = "Pregnancy number [PhenX]"
* component[pregnancyNumber].valueInteger 1..1

* component[numberOfChild].code.coding.system = "http://loinc.org"
* component[numberOfChild].code.coding.code = #11636-8
* component[numberOfChild].code.coding.display = "Number of live births"
* component[numberOfChild].valueInteger 1..1


Alias: $bodySiteVS = https://ehr.p5.pt/api/fhir/ValueSet/bodySite
Alias: $symptomsVS = https://ehr.p5.pt/api/fhir/ValueSet/symptoms
Alias: $severitySymptomsVs = https://ehr.p5.pt/api/fhir/ValueSet/severity-symptoms
Alias: $symptomPropertiesVS = https://ehr.p5.pt/api/fhir/ValueSet/symptom-properties
Alias: $symptomPropertiesCS = http://example.com/fhir/example/CodeSystem/symptom-properties