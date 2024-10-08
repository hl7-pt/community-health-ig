Profile: HumanMessages
Parent: Communication
Id: HumanMessages
Title: "Messages"
Description: "Este perfil representa as restrições aplicadas ao recurso Communication pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS). Descreve as expectativas mínimas para o recurso Communication quando utilizado na composição do sistema ou em um dos recursos referidos."
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