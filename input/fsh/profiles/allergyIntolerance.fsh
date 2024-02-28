Profile: AllergyIntoleranceTCSS
Parent: AllergyIntolerance
Id: AllergyIntoleranceTCSS
Title: "AllergyIntoleranceAllergyIntoleranceTCSS"
Description: "This profile represents the constraints applied to the Allergy Intolerance resource by the Triage and Counseling Clinical System (TCCS) FHIR Implementation Guide. It describes the minimum expectations for the AllergyIntolerance resource when used in the system's composition or in one of the referred resources."
* patient only Reference(PatientTCCS)
* encounter 1..
* encounter only Reference(HumanEncounter)