Profile: EpisodeOfCareTCCS
Parent: EpisodeOfCare
Id: EpisodeOfCareTCCS
Title: "Episode Of Care"
Description:  "This profile represents the constraints applied to the EpisodeOfCare resource by the Triage and Counseling Clinical System (TCCS) FHIR Implementation Guide. It describes the minimum expectations for the EpisodeOfCare resource when used in the system's composition or in one of the referred resources."
* managingOrganization 1..
* managingOrganization = Reference(P5Organization)
* careManager only Reference(Practitioner)
* extension contains ModifierExtensionOrganization named modifierExtensionOrganization 1..1 MS
