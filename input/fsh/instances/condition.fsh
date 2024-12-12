Instance: ExemploConditionVisualDisturbance
InstanceOf: ConditionDiagnosis
Title: "Exemplo Condition - Disturbio visual"
Description: "An example Condition resource representing a visual disturbance for a specific patient."
* id = "exemplo-condition-disturbio-visual"

* meta.profile[0] = "http://triage-counseling-clinical-system.org/fhir/StructureDefinition/Diagnosis"

* extension[0].url = "http://example.com/fhir/example/StructureDefinition/probability"
* extension[0].valueDecimal = 75.57

* category[0].coding[0].system = "http://hl7.org/fhir/ValueSet/condition-category"
* category[0].coding[0].code = #encounter-diagnosis

* code.coding[0].system = "https://ehr.p5.pt/terminology/CodeSystem/conditions"
* code.coding[0].code = #83
* code.coding[0].display = "Visual disturbance"

* code.coding[1].system = "http://snomed.info/sct"
* code.coding[1].code = #63102001
* code.coding[1].display = "Visual disturbance (disorder)"

* code.coding[2].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[2].code = #H53
* code.coding[2].display = "Visual disturbances"

* code.coding[3].system = "http://ehr.p5.pt/terminology/icpc2"
* code.coding[3].code = #F05
* code.coding[3].display = "Visual disturbance other"

* code.text = "Visual disturbance"

* subject.reference = "Patient/exemplo-patient-1"
* encounter.reference = "Encounter/exemplo-encounter-ia-registo"

Instance: ExemploConditionEyePain
InstanceOf: ConditionDiagnosis
Title: "Exemplo Condition - Dor Ocular"
Description: "An example Condition resource representing eye pain for a specific patient."
* id = "exemplo-condition-dor-ocular"

* extension[0].url = "http://example.com/fhir/example/StructureDefinition/probability"
* extension[0].valueDecimal = 84.03

* code.coding[0].system = "https://ehr.p5.pt/terminology/CodeSystem/conditions"
* code.coding[0].code = #94
* code.coding[0].display = "Eye pain"

* code.coding[1].system = "http://snomed.info/sct"
* code.coding[1].code = #41652007
* code.coding[1].display = "Pain in eye (finding)"

* code.coding[2].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[2].code = #H57.1
* code.coding[2].display = "Ocular pain"

* code.coding[3].system = "http://ehr.p5.pt/terminology/icpc2"
* code.coding[3].code = #F01
* code.coding[3].display = "Eye pain"

* code.text = "Eye pain"

* subject.reference = "Patient/exemplo-patient-1"
* encounter.reference = "Encounter/exemplo-encounter-ia-registo"


Instance: ExemploConditionRiskPregnacy
InstanceOf: ConditionCriticalDisease
Title: "Exemplo Condition - Gravidez de rsico"
Description: "Exemplo representando uma gravidez de risco."
* id = "exemplo-condition-gravidez-risco"
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.display = "Active"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #critical
* code.text = "Gravidez de risco"
* subject = Reference(Patient/exemplo-patient-1)
* note[0].text = "Gravidez considerada de risco por hipertensão."

Instance: ExemploConditionDiabetes
InstanceOf: ConditionChronicDiseaseDiabetes
Title: "Exemplo Condition - Doença Crónica - Diabetes Mellitus"
Description: "Condição crônica de Diabetes Mellitus."
* id = "exemplo-condition-chronic-disease-diabetes"
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.display = "Active"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #chronic
* category.coding.display = "Chronic disease"
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #73211009
* code.coding[0].display = "Diabetes mellitus"
* code.text = "Diabetes"
* subject = Reference(Patient/exemplo-patient-1)

Instance: ExemploConditionHypertension
InstanceOf: ConditionChronicDiseaseHypertension
Title: "Exemplo Condition - Doença Crónica - Hipertensão"
Description: "Condição crônica de Hipertensão."
* id = "exemplo-condition-chronic-hypertension"
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.display = "Active"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #chronic
* category.coding.display = "Chronic disease"
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #38341003
* code.coding[0].display = "Hypertension"
* subject = Reference(Patient/exemplo-patient-1)

Instance: ExemploConditionDyslipidemia
InstanceOf: ConditionChronicDiseaseDyslipidemia
Title: "Exemplo Condition - Doença Crónica - Dislipidemia"
Description: "Condição crônica de Dislipidemia."
* id = "exemplo-condition-chronic-dyslipidemia"
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.display = "Active"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #chronic
* category.coding.display = "Chronic disease"
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #370992007
* code.coding[0].display = "Dyslipidemia"
* subject = Reference(Patient/exemplo-patient-1)

Instance: ExemploConditionChronicObstructivePulmonaryDisease
InstanceOf: ConditionChronicChronicObstructivePulmonaryDisease
Title: "Exemplo Condition - Doença Crónica - Doença Pulmonar Obstrutiva Crônica"
Description: "Condição crônica de Doença Pulmonar Obstrutiva Crônica."
* id = "exemplo-condition-chronic-obstructive-pulmonary-disease"
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.display = "Active"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #chronic
* category.coding.display = "Chronic disease"
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #13645005
* code.coding[0].display = "Chronic obstructive pulmonary disease"
* subject = Reference(Patient/exemplo-patient-1)

Instance: ExemploConditionAsthma
InstanceOf: ConditionChronicDiseaseAsthma
Title: "Exemplo Condition - Doença Crónica - Asma"
Description: "Condição crônica de Asma."
* id = "exemplo-condition-asthma"
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.display = "Active"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #chronic
* category.coding.display = "Chronic disease"
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #195967001
* code.coding[0].display = "Asthma"
* subject = Reference(Patient/exemplo-patient-1)

Instance: ExemploConditionChronicDisease
InstanceOf: ConditionChronicDisease
Title: "ExemploConditionChronicDisease"
Description: "Instância representando outras doenças crônicas não especificadas."
* id = "exemplo-condition-chronic-disease"
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.display = "Active"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #chronic
* category.coding.display = "Chronic disease"
* code.text = "Outra doença"
* subject = Reference(Patient/exemplo-patient-1)
