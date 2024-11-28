Profile: MedicationStatementStandard
Parent: MedicationStatement
Id: medication-statement-standard
Title: "MedicationStatement"
Description: "Este perfil é utilizado para registar informações sobre medicamentos que um paciente está atualmente a tomar, tomou no passado ou que está previsto tomar no futuro."

* subject only Reference(Patient)

* status 1..1 
* status from http://hl7.org/fhir/ValueSet/medication-statement-status

* dosage 0..* 
* dosage.timing.code.coding 0..* 
* dosage.timing.code.coding.system = "https://ehr.testing.p5.pt/api/fhir/CodeSystem/medication-frequency"

* dosage.doseAndRate 0..* 
* dosage.doseAndRate.doseQuantity 0..1
* dosage.doseAndRate.doseQuantity.value 1..1 
* dosage.doseAndRate.doseQuantity.unit 1..1 
* dosage.doseAndRate.doseQuantity.system 0..1
* dosage.doseAndRate.doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* dosage.doseAndRate.doseQuantity.code 0..1
