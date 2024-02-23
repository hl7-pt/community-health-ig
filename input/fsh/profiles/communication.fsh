Profile: HumanMessages
Parent: Communication
Id: HumanMessages
Title: "Messages"
Description: "This profile represents the constraints applied to the Communication resource by the Triage and Counseling Clinical System (TCCS) FHIR Implementation Guide. It describes the minimum expectations for the Communication resource when used in the system's composition or in one of the referred resources."
* status = #completed
* subject 1.. 
* subject only Reference(PatientTCCS)
* encounter 1..
* encounter only Reference(HumanEncounter)
* sent 1..
* recipient 1..1 
* recipient only Reference(Patient or RelatedPerson or Practitioner)
* sender 1..
* sender only Reference(Patient or RelatedPerson or Practitioner)