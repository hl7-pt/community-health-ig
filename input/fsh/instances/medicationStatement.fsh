Instance: ExampleMedicationStatementFenofibrato
InstanceOf: MedicationStatementStandard
Title: "Exemplo MedicationStatement - Fenofibrato"
Description: "An example MedicationStatement resource for Fenofibrato Generis, 145mg."
* id = "c5d03567-a9e6-4a3b-b593-45f7a65a5cd8"
* status = #active
* medicationCodeableConcept.text = "Fenofibrato Generis, Fenofibrato, 145mg"
* subject.reference = "Patient/exemplo-patient-1"
* effectivePeriod.start = "2020-11-01T00:00:00+00:00"
* dosage[0].timing.code.coding[0].system = "https://ehr.testing.p5.pt/api/fhir/CodeSystem/medication-frequency"
* dosage[0].timing.code.coding[0].code = #1-d
* dosage[0].timing.code.coding[0].display = "1/dia"
* dosage[0].doseAndRate[0].doseQuantity.value = 1
* dosage[0].doseAndRate[0].doseQuantity.unit = "Comprimido"
* dosage[0].doseAndRate[0].doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* dosage[0].doseAndRate[0].doseQuantity.code = #PILL
