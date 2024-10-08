Profile: RelatedPersonTCCS
Parent: RelatedPerson
Id: RelatedPersonTCCS
Title: "Related Person (TCCS)"
Description: "Este perfil representa as restrições aplicadas ao recurso RelatedPerson pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS). Descreve as expectativas mínimas para o recurso RelatedPerson quando utilizado na composição do sistema ou em um dos recursos referidos.
O recurso RelatedPerson é utilizado para informar sobre uma pessoa que está envolvida no cuidado de um paciente, mas que não é o alvo dos cuidados de saúde, nem tem uma responsabilidade formal no processo de cuidado."
* telecom 1..
* extension contains PatientIdentifier named patientIdentifier 1..1 MS
