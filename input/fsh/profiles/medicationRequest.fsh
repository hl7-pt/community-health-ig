Profile: MedicationRequestEncounter
Parent: MedicationRequest
Id: MedicationRequestEncounter
Title: "MedicationRequestEncouMedicationRequestnter"
Description: "Este perfil representa as restrições aplicadas ao recurso MedicationRequest pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS). Descreve as expectativas mínimas para o recurso MedicationRequest quando utilizado na composição do sistema ou em um dos recursos referidos."
* subject only Reference(PatientTCCS)
* encounter 1..
* encounter only Reference(HumanEncounter)
* requester 1..
* requester only Reference(Practitioner)
* basedOn 1..
* basedOn only Reference(CarePlanEncounter)
* dosageInstruction 1..