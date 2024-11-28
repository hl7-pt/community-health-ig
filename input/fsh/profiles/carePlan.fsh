Profile: CarePlanTreatmentPlan
Parent: CarePlan
Id: care-plan-treatmentPlan
Title: "CarePlan - Plano de tratamento"
Description: "Este perfil define as restrições para o recurso `CarePlan`, padronizando a documentação de planos de cuidado.
O plano de cuidados pode incluir diferentes tipos de tarefas, cada uma direcionada para abordar aspetos específicos da condição do paciente:
Tarefas não farmacológicas: Focam-se em intervenções que não envolvem o uso de medicação, como alterações no estilo de vida ou outras abordagens terapêuticas.
Tarefas de ServiceRequest: Estas tarefas definem uma data de reavaliação, especificando quando o episódio de cuidados deve ser reavaliado para determinar o progresso do paciente e os próximos passos no tratamento.
O plano de cuidados inclui também uma secção de notas, onde o profissional de saúde pode registar observações, ideias ou instruções importantes. Esta secção permite documentar qualquer detalhe relevante para a gestão do cuidado."

* status 1..1 MS

* intent 1..1 MS
* intent from http://hl7.org/fhir/ValueSet/care-plan-intent 

* subject 1..1 MS
* subject only Reference(PatientTCCS)

* encounter 0..1
* encounter only Reference(Encounter)

* period 0..1
  * start 1..1 MS
  * end 0..1

* activity 0..* MS
  * detail 1..1
    * kind 1..1 MS
    * kind from http://hl7.org/fhir/ValueSet/care-plan-activity-kind
    * code.coding 0..* MS
    * code.coding.system from https://ehr.testing.p5.pt/api/fhir/ValueSet/care-plan-activity-type
    * status 1..1 MS
    * status from http://hl7.org/fhir/ValueSet/care-plan-activity-status
    * scheduled[x] 0..1
    * scheduled[x] only Period
    * description 0..1

* note 0..* MS
* note.text 1..1 MS