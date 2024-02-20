Profile: CarePlanEncounter
Parent: CarePlan
Id: CarePlanEncounter
Title: "CarePlanEncounter"
Description: "This profile represents the constraints applied to the CarePlan resource by the Triage and Counseling Clinical System (TCCS) FHIR Implementation Guide. It describes the minimum expectations for the Communication resource when used in the system's composition or in one of the referred resources."
* subject only Reference(PatientTCCS)
* encounter 1..
* encounter only Reference(HumanEncounter)
* author only Reference(Practitioner)