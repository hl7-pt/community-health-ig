Profile: EpisodeOfCareTCCS
Parent: EpisodeOfCare
Id: EpisodeOfCareTCCS
Title: "Episode Of Care"
Description:  "Este perfil representa as restrições aplicadas ao recurso EpisodeOfCare pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS). Descreve as expectativas mínimas para o recurso EpisodeOfCare quando utilizado na composição do sistema ou em um dos recursos referidos."
* managingOrganization 1..
* managingOrganization = Reference(P5Organization)
* careManager only Reference(Practitioner)
* extension contains ModifierExtensionOrganization named modifierExtensionOrganization 1..1 MS
