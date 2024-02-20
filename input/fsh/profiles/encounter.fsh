Profile: EncounterFirst
Parent: Encounter
Id: EncounterFirst
Title: "Encounter - Iteraction with the artificial intelligence algorithm"
Description: "This profile represents the constraints applied to the Encounter resource by the Triage and Counseling Clinical System (TCCS) FHIR Implementation Guide. 
It describes the minimum expectations for the EpisodeOfCare resource when used in the system's composition or in one of the referred resources. 
It is used to represent the result that cames from the iteraction with the artificial inteligence algorithm."
* class 1..1
  * code from ActEncounterCodeVS
  * code = #EMER
* status from EncounterStatusVS
* status = #finished
* episodeOfCare only Reference(EpisodeOfCareTCCS)
* subject 1..
* diagnosis 
  * condition only Reference(Condition)

Profile: HumanEncounter
Parent: Encounter
Id: HumanEncounter
Title: "HumanEncounter"
Description: "Encounter between the patient/form filler and profissional"
* status from EncounterStatusVS
* class
  * code from ActEncounterCodeVS
  * code = #EMER
* episodeOfCare only Reference(EpisodeOfCareTCCS)
* diagnosis 
  * condition only Reference(Condition)


Alias: EncounterStatusVS = http://hl7.org/fhir/ValueSet/encounter-status
Alias: ActEncounterCodeVS = http://terminology.hl7.org/ValueSet/v3-ActEncounterCode
