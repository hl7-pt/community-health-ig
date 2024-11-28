Instance: ExampleCarePlanTreatmentClosure
InstanceOf: CarePlanTreatmentPlan
Title: "Exemplo CarePlan - Plano de tratamento para fecho de caso"
Description: "Um exemplo de recurso CarePlan detalhando um plano de cuidados para fecho de caso."
* id = "exemplo-carePlan-plano-de-tratamento-fecho-caso"

* status = #active
* intent = #plan

* subject.reference = "Patient/exemplo-patient-1"
* encounter.reference = "Encounter/exemplo-encounter-fecho-caso"

* activity[0].detail.kind = #Task
* activity[0].detail.code.coding[0].system = "http://localhost:8081/api/fhirValueSet/care-plan-activity-type"
* activity[0].detail.code.coding[0].code = #non-pharmacological-plan
* activity[0].detail.status = #in-progress
* activity[0].detail.description = "lavagem ocular com soro"

* note[0].text = "Paciente estava melhor, mas foi recomendado a agendar uma consulta presencial com oftamologista"

* period.start = "2024-10-20T00:00:00+00:00"


Instance: ExampleCarePlanFollowUpWithMedication
InstanceOf: CarePlanTreatmentPlan
Title: "Exemplo CarePlan - Plano de tratamento com medicação"
Description: "Um exemplo de recurso CarePlan detalhando um plano de cuidados para seguimento do tratamento com atividades programadas, medicação e observações relevantes."
* id = "exemplo-carePlan-plano-de-tratamento-seguimento-com-medicacao"

* status = #active
* intent = #plan

* subject.reference = "Patient/exemplo-patient-1"
* encounter.reference = "Encounter/exemplo-encounter-seguimento"

* period.start = "2024-10-10T00:00:00+00:00"
* period.end = "2024-10-20T00:00:00+00:00"

* activity[0].detail.kind = #ServiceRequest
* activity[0].detail.code.coding[0].system = "https://ehr.testing.p5.pt/api/fhir/ValueSet/care-plan-activity-type"
* activity[0].detail.code.coding[0].code = #reevaluate-date
* activity[0].detail.status = #scheduled
* activity[0].detail.scheduledPeriod.start = "2024-10-20T00:00:00+00:00"
* activity[0].detail.description = "Reevaluate care plan"

* activity[1].detail.kind = #Task
* activity[1].detail.code.coding[0].system = "https://ehr.testing.p5.pt/api/fhir/ValueSet/care-plan-activity-type"
* activity[1].detail.code.coding[0].code = #non-pharmacological-plan
* activity[1].detail.status = #in-progress
* activity[1].detail.description = "lavagem ocular com soro"

* activity[2].reference.reference = "MedicationRequest/exemplo-medicationRequest-medicacao-prescrita"
* activity[2].detail.kind = #MedicationRequest
* activity[2].detail.status = #in-progress

* note[0].text = "Paciente estava melhor, mas com dor localizada no olho direito"

Instance: ExampleCarePlanFollowUp
InstanceOf: CarePlanTreatmentPlan
Title: "Exemplo CarePlan - Plano de tratamento seguimento de caso"
Description: "Um exemplo de recurso CarePlan detalhando um plano de cuidados para seguimento do tratamento com atividades programadas e observações relevantes."
* id = "exemplo-carePlan-plano-de-tratamento-seguimento"

* status = #active
* intent = #plan

* subject.reference = "Patient/exemplo-patient-1"
* encounter.reference = "Encounter/exemplo-encounter-seguimento"

* period.start = "2024-10-06T00:00:00+00:00"
* period.end = "2024-10-10T00:00:00+00:00"

* activity[0].detail.kind = #ServiceRequest
* activity[0].detail.code.coding[0].system = "https://ehr.testing.p5.pt/api/fhir/ValueSet/care-plan-activity-type"
* activity[0].detail.code.coding[0].code = #reevaluate-date
* activity[0].detail.status = #scheduled
* activity[0].detail.scheduledPeriod.start = "2024-10-10T00:00:00+00:00"
* activity[0].detail.description = "Reevaluate care plan"

* activity[1].detail.kind = #Task
* activity[1].detail.code.coding[0].system = "https://ehr.testing.p5.pt/api/fhir/ValueSet/care-plan-activity-type"
* activity[1].detail.code.coding[0].code = #non-pharmacological-plan
* activity[1].detail.status = #in-progress
* activity[1].detail.description = "descançar"

* note[0].text = "Paciente encontrava-se com forte dor de cabeça"
