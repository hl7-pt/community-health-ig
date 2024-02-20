Profile: ConditionDiagnosis
Parent: Condition
Id: ConditionDiagnosis
Title: "Diagnosis"
Description: "This profile represents the constraints applied to the Condition resource by the Triage and Counseling Clinical System (TCCS) FHIR Implementation Guide. It describes the minimum expectations for the Condition resource when used in the system's composition or in one of the referred resources."
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
Alias: $icp2VS = http://ehr.p5/terminology/icpc2
