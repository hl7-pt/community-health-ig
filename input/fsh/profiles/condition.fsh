Profile: ConditionDiagnosis
Parent: Condition
Id: ConditionDiagnosis
Title: "Diagnosis"
Description: "Este perfil representa as restrições aplicadas ao recurso Condition pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS). Descreve as expectativas mínimas para o recurso Condition quando utilizado na composição do sistema ou em um dos recursos referidos."
* code 1..1 MS
* code from $snomedCTVS (preferred)
* code ^definition = "Identification of the condition, problem or diagnosis or recording of \"problem absent\" or of \"problems unknown\"."
* code ^binding.extension[0].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = $icd10VS
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Codes for a clinical problem in ICD10 Set"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[+].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = $icp2VS
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Codes for a clinical problem in ICP2 Set"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.description = "Code for a clinical problem that is selected from SNOMED CT or a code for absent/unknown problem"
* subject 1..
* extension contains DiagnosisProbability named probability 0..1 MS
* extension contains $translationExtension named translation 0..* MS

Alias: $translationExtension = http://hl7.org/fhir/StructureDefinition/translation

Alias: $snomedCTVS = http://snomed.info/sct
Alias: $icd10VS = http://hl7.org/fhir/sid/icd-10
Alias: $icp2VS = http://ehr.p5.pt/terminology/icpc2
