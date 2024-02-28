Profile: ClinicalImpressionEncounter
Parent: ClinicalImpression
Id: ClinicalImpressionEncounter
Title: "ClinicalImpressionEncouClinicalImpressionnter"
Description: "This profile represents the constraints applied to the ClinicalImpression resource by the Triage and Counseling Clinical System (TCCS) FHIR Implementation Guide. It describes the minimum expectations for the ClinicalImpression resource when used in the system's composition or in one of the referred resources."
* subject only Reference(PatientTCCS)
* encounter 1..
* assessor 1..
* assessor only Reference(Practitioner)
