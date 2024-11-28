Profile: MedicationRequestStandard
Parent: MedicationRequest
Id: medication-request-standard
Title: "MedicationRequest"
Description: "O recurso MedicationRequest no FHIR representa um pedido de medicação prescrita a um paciente. É utilizado para registar os detalhes da intenção do clínico relativamente à medicação do paciente, incluindo a dosagem, a frequência e a duração do uso."

* subject only Reference(Patient)
* encounter 1..
* encounter only Reference(Encounter)
* requester only Reference(Practitioner)
* dosageInstruction 1..

* dosageInstruction 1..
* dosageInstruction.timing 0..1
* dosageInstruction.timing.code.coding 0..* 
* dosageInstruction.timing.code.coding.system = "https://ehr.testing.p5.pt/api/fhir/CodeSystem/medication-frequency"
* dosageInstruction.timing.repeat.duration 0..1
* dosageInstruction.timing.repeat.durationUnit 0..1

* dosageInstruction.doseAndRate 0..* 
* dosageInstruction.doseAndRate.doseQuantity 0..1
* dosageInstruction.doseAndRate.doseQuantity.value 1..1 
* dosageInstruction.doseAndRate.doseQuantity.unit 1..1 
* dosageInstruction.doseAndRate.doseQuantity.system 0..1
* dosageInstruction.doseAndRate.doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* dosageInstruction.doseAndRate.doseQuantity.code 0..1
