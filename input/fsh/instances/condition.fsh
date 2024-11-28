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
