Profile: ClinicalImpressionEncounter
Parent: ClinicalImpression
Id: ClinicalImpressionEncounter
Title: "ClinicalImpressionEncouClinicalImpressionnter"
Description: "Este perfil representa as restrições aplicadas ao recurso ClinicalImpression pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS). Descreve as expectativas mínimas para o recurso ClinicalImpression quando utilizado na composição do sistema ou em um dos recursos referidos."
* subject only Reference(PatientTCCS)
* encounter 1..
* assessor 1..
* assessor only Reference(Practitioner)
