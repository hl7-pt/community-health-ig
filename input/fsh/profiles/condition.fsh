Profile: ConditionDiagnosis
Parent: Condition
Id: condition-diagnosis
Title: "Condition - Diagnosis"
Description: "Este perfil especifica as restrições para o recurso `Condition` no contexto do Sistema Clínico de Triagem e Aconselhamento (TCCS). 
Este perfil representa o registro de diagnósticos e problemas de saúde, com suporte a sistemas de codificação preferenciais, como SNOMED CT, ICD-10 e ICPC-2, permitindo maior interoperabilidade e precisão na documentação clínica. 
Além disso, o perfil inclui uma extensão para representar a probabilidade associada ao diagnóstico, aprimorando a análise e a tomada de decisão em cenários clínicos."

* code 1..1 MS
* code from https://ehr.p5.pt/terminology/CodeSystem/conditions (preferred)
* code.text 1..1 MS
* code ^definition = "Identification of the condition, problem or diagnosis or recording of \"problem absent\" or of \"problems unknown\"."
* code ^binding.extension[0].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = $snomedCTVS
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Codes for a clinical problem in SNOMED CT Set"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
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
* code ^binding.description = "Code for a clinical problem or a code for absent/unknown problem"

* subject 1..
* extension contains Probability named probability 0..1 MS
* category.coding.system = "http://hl7.org/fhir/ValueSet/condition-category" (exactly)
* category.coding.code = #encounter-diagnosis (exactly)
* category.coding.display = "Encounter Diagnosis" (exactly)

Alias: $snomedCTVS = http://ehr.p5.pt/terminology/snomedct
Alias: $icd10VS = http://hl7.org/fhir/sid/icd-10
Alias: $icp2VS = http://ehr.p5.pt/terminology/icpc2
Alias: $conditionsVS = https://ehr.p5.pt/terminology/CodeSystem/conditions
