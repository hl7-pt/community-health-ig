Profile: AllergyIntoleranceTCSS
Parent: AllergyIntolerance
Id: AllergyIntoleranceTCSS
Title: "AllergyIntoleranceAllergyIntoleranceTCSS"
Description: "Este perfil representa as restrições aplicadas ao recurso AllergyIntolerance pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS). Descreve as expectativas mínimas para o recurso AllergyIntolerance quando utilizado na composição do sistema ou em um dos recursos referidos."
* patient only Reference(PatientTCCS)
* encounter 1..
* encounter only Reference(HumanEncounter)