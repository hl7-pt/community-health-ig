Profile: PatientTCCS
Parent: Patient
Id: patient-tccs
Title: "Patient - TCCS Patient"
Description: "Este perfil representa as restrições aplicadas ao recurso Patient pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS). Descreve as expectativas mínimas para o recurso Patient quando utilizado na composição do sistema ou em um dos recursos referidos.
Na área da saúde, Patient refere-se a um indivíduo, e informações demográficas específicas devem ser registradas e mantidas atualizadas."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "url"
* identifier ^slicing.rules = #open
* identifier contains
    HealthcareNumber 0..1 MS
* identifier[HealthcareNumber].system = $FHIRP5

Alias: $FHIRP5 = https://ehr.p5.pt/api/fhir
