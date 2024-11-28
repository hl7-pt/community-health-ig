Instance: ExampleMedicationRequestPrescribedMedication
InstanceOf: MedicationRequestStandard
Title: "Exemplo MedicationRequest - Medicação Prescrita"
Description: "An example MedicationRequest resource for a prescribed medication."
* id = "exemplo-medicationRequest-medicacao-prescrita"
* status = #active
* intent = #order
* encounter.reference = "Encounter/exemplo-encounter-seguimento"
* medicationReference.reference = "Medication/exemplo-medication-paracetamol"
* subject.reference = "Patient/exemplo-patient-1"
* dosageInstruction[0].timing.code.coding[0].system = "https://ehr.testing.p5.pt/api/fhir/CodeSystem/medication-frequency"
* dosageInstruction[0].timing.code.coding[0].code = #8-8-h
* dosageInstruction[0].timing.code.coding[0].display = "8/8 h"
* dosageInstruction[0].timing.repeat.duration = 3
* dosageInstruction[0].timing.repeat.durationUnit = #d
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "Comprimido"
* dosageInstruction[0].doseAndRate[0].doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* dosageInstruction[0].doseAndRate[0].doseQuantity.code = #PILL
