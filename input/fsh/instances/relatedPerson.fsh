Instance: ExampleRelatedPerson1
InstanceOf: RelatedPersonTCCS
Title: "Exemplo RelatedPerson - Emily Smith"
Description: "Um exemplo de resource RelatedPerson para Emily Smith."
* id = "exemplo-relatedPerson-1"
* patient.reference = "Patient/exemplo-patient-1"
* meta.profile[0] = "https://ehr.testing.p5.pt/api/fhir/StructureDefinition/RelatedPersonTCCS"
* name.family = "Smith"
* name.given[0] = "Emily"
* telecom[0].system = #phone
* telecom[0].value = "+351888888888"
* extension[0].url = "https://ehr.testing.p5.pt/api/fhir/StructureDefinition/PatientIdentifier"
* extension[0].valueReference.reference = "Patient/exemplo-patient-2"

Instance: ExampleRelatedPerson2
InstanceOf: RelatedPersonTCCS
Title: "Exemplo RelatedPerson - Michael Johnson"
Description: "Um exemplo de resource RelatedPerson para Michael Johnson."
* id = "exemplo-relatedPerson-2"
* patient.reference = "Patient/exemplo-patient-1"
* meta.profile[0] = "https://ehr.testing.p5.pt/api/fhir/StructureDefinition/RelatedPersonTCCS"
* name.family = "Johnson"
* name.given[0] = "Michael"
* telecom[0].system = #phone
* telecom[0].value = "+351777777777"
* extension[0].url = "https://ehr.testing.p5.pt/api/fhir/StructureDefinition/PatientIdentifier"
* extension[0].valueReference.reference = "Patient/exemplo-patient-3"
