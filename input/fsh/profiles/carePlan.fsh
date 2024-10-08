Profile: CarePlanEncounter
Parent: CarePlan
Id: CarePlanEncounter
Title: "CarePlanEncounter"
Description: "Este perfil representa as restrições aplicadas ao recurso CarePlan pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS). Descreve as expectativas mínimas para o recurso Communication quando utilizado na composição do sistema ou em um dos recursos referidos."
* subject only Reference(PatientTCCS)
* encounter 1..
* encounter only Reference(HumanEncounter)
* author only Reference(Practitioner)