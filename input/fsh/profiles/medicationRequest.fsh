Profile: MedicationRequestEncounter
Parent: MedicationRequest
Id: MedicationRequestEncounter
Title: "MedicationRequestEncouMedicationRequestnter"
Description: "This profile represents the constraints applied to the MedicationRequest resource by the Triage and Counseling Clinical System (TCCS) FHIR Implementation Guide. It describes the minimum expectations for the MedicationRequest resource when used in the system's composition or in one of the referred resources."
* subject only Reference(PatientTCCS)
* encounter 1..
* encounter only Reference(HumanEncounter)
* requester 1..
* requester only Reference(Practitioner)
* basedOn 1..
* basedOn only Reference(CarePlanEncounter)
* dosageInstruction 1..