Profile: AllergyIntolerancePatientAllergy
Parent: AllergyIntolerance
Id: allergy-intolerance-patient-allergy
Title: "AllergyIntolerance - Alergia do paciente registada"
Description: "Este perfil representa as restrições aplicadas ao recurso AllergyIntolerance pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS). Descreve as expectativas mínimas para o recurso AllergyIntolerance quando utilizado na composição do sistema ou em um dos recursos referidos."
* patient only Reference(Patient)
* encounter 1..
* encounter only Reference(Encounter)
* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS
* type 1..1 MS
* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/allergy-intolerance-category
* criticality 0..1
* criticality from http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality

* code 1..1 MS
* code from https://ehr.p5.pt/terminology/ValueSet/snomedct

* reaction 0..* MS
* reaction.description 0..1
* reaction.substance 0..1 MS
* reaction.substance.coding.system = "http://snomed.info/sct" (exactly)
* reaction.manifestation 1..* MS
* reaction.manifestation.coding.system = "http://snomed.info/sct" (exactly)
* reaction.onset 0..1
* reaction.severity 0..1
* reaction.severity from http://hl7.org/fhir/ValueSet/reaction-event-severity
* reaction.exposureRoute
* reaction.exposureRoute.coding.system = "http://snomed.info/sct" (exactly)


