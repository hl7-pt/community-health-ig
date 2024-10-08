Profile: EncounterFirst
Parent: Encounter
Id: EncounterFirst
Title: "Encounter - Iteraction with the artificial intelligence algorithm"
Description: "Este perfil representa as restrições aplicadas ao recurso Encounter pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS).
Descreve as expectativas mínimas para o recurso EpisodeOfCare quando utilizado na composição do sistema ou em um dos recursos referidos.
É utilizado para representar o resultado proveniente da interação com o algoritmo de inteligência artificial."
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
