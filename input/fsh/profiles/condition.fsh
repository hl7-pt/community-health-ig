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

Profile: ConditionCriticalDisease
Parent: Condition
Id: condition-critical-disease
Title: "Condition - Doença de Risco"
Description: "Um perfil de Condition para representar doenças de risco."

* clinicalStatus 1..1 MS
* clinicalStatus.coding 1..1
* category 1..* MS
* category.coding 1..*
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #critical
* category.coding.display = "Critical disease"
* code 1..1 MS
* code.text 1..1
* subject 1..1 MS
* subject only Reference(Patient)
* note 0..*
* note.text 1..1

Alias: $snomedCTVS = http://ehr.p5.pt/terminology/snomedct
Alias: $icd10VS = http://hl7.org/fhir/sid/icd-10
Alias: $icp2VS = http://ehr.p5.pt/terminology/icpc2
Alias: $conditionsVS = https://ehr.p5.pt/terminology/CodeSystem/conditions

Profile: ConditionChronicDisease
Parent: Condition
Id: condition-chronic-disease
Title: "Condition - Doenças Crônicas"
Description: "Um perfil de Condition para representar doenças crônicas."

* clinicalStatus 1..1 MS
* clinicalStatus.coding 1..1
* category 1..1 MS
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #chronic
* category.coding.display = "Chronic disease"
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient)

Profile: ConditionChronicDiseaseDiabetes
Parent: Condition
Id: condition-chronic-disease-diabetes
Title: "Condition - Doenças Crônicas - Diabetes"
Description: "Um perfil de Condition para representar diabetes como doença crônica."

* clinicalStatus 1..1
* clinicalStatus.coding 1..1
* category 1..1
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #chronic
* category.coding.display = "Chronic disease"
* code 1..1
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #73211009
* code.coding.display = "Diabetes mellitus"
* subject 1..1
* subject only Reference(Patient)

Profile: ConditionChronicDiseaseHypertension
Parent: Condition
Id: condition-chronic-disease-hypertension
Title: "Condition - Doenças Crônicas - Hipertensão"
Description: "Um perfil de Condition para representar hipertensão como doença crônica."

* clinicalStatus 1..1
* clinicalStatus.coding 1..1
* category 1..1
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #chronic
* category.coding.display = "Chronic disease"
* code 1..1
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #38341003
* code.coding.display = "Hypertension"
* subject 1..1
* subject only Reference(Patient)

Profile: ConditionChronicDiseaseDyslipidemia
Parent: Condition
Id: condition-chronic-disease-dyslipidemia
Title: "Condition - Doenças Crônicas - Dislipidemia"
Description: "Um perfil de Condition para representar dislipidemia como doença crônica."

* clinicalStatus 1..1
* clinicalStatus.coding 1..1
* category 1..1
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #chronic
* category.coding.display = "Chronic disease"
* code 1..1
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #370992007
* code.coding.display = "Dyslipidemia"
* subject 1..1
* subject only Reference(Patient)

Profile: ConditionChronicChronicObstructivePulmonaryDisease
Parent: Condition
Id: condition-chronic-disease-chronic-obstructive-pulmonary-disease
Title: "Condition - Doenças Crônicas - DPOC"
Description: "Um perfil de Condition para representar DPOC como doença crônica."

* clinicalStatus 1..1
* clinicalStatus.coding 1..1
* category 1..1
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #chronic
* category.coding.display = "Chronic disease"
* code 1..1
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #13645005
* code.coding.display = "Chronic obstructive pulmonary disease"
* subject 1..1
* subject only Reference(Patient)

Profile: ConditionChronicDiseaseAsthma
Parent: Condition
Id: condition-chronic-disease-asthma
Title: "Condition - Doenças Crônicas - Asma"
Description: "Um perfil de Condition para representar asma como doença crônica."

* clinicalStatus 1..1
* clinicalStatus.coding 1..1
* category 1..1
* category.coding 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #chronic
* category.coding.display = "Chronic disease"
* code 1..1
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #195967001
* code.coding.display = "Asthma"
* subject 1..1
* subject only Reference(Patient)