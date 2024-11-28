Instance: ExamplePatient1
InstanceOf: PatientTCCS
Title: "Exemplo Patient - John Doe"
Description: "Um exemplo de resource Patient para John Doe."
* id = "exemplo-patient-1"
* meta.profile[0] = "https://ehr.testing.p5.pt/api/fhir/StructureDefinition/PatientTCCS"
* identifier[0].system = "https://ehr.testing.p5.pt/api/fhir"
* identifier[0].value = "12345678"
* name[0].family = "Doe"
* name[0].given[0] = "John"
* telecom[0].system = #phone
* telecom[0].value = "+351999999999"
* telecom[1].system = #email
* telecom[1].value = "testing@email.com"
* gender = #male
* birthDate = "2009-02-09"

Instance: ExamplePatient2
InstanceOf: PatientTCCS
Title: "Exemplo Patient - Jane Smith"
Description: "Um exemplo de resource Patient para Jane Smith."
* id = "exemplo-patient-2"
* meta.profile[0] = "https://ehr.testing.p5.pt/api/fhir/StructureDefinition/PatientTCCS"
* identifier[0].system = "https://ehr.testing.p5.pt/api/fhir"
* identifier[0].value = "87654321"
* name[0].family = "Smith"
* name[0].given[0] = "Jane"
* telecom[0].system = #phone
* telecom[0].value = "+351888888888"
* telecom[1].system = #email
* telecom[1].value = "jane.smith@email.com"
* gender = #female
* birthDate = "2010-05-15"

Instance: ExamplePatient3
InstanceOf: PatientTCCS
Title: "Exemplo Patient - Michael Johnson"
Description: "Um exemplo de resource Patient para Michael Johnson."
* id = "exemplo-patient-3"
* meta.profile[0] = "https://ehr.testing.p5.pt/api/fhir/StructureDefinition/PatientTCCS"
* identifier[0].system = "https://ehr.testing.p5.pt/api/fhir"
* identifier[0].value = "98765432"
* name[0].family = "Johnson"
* name[0].given[0] = "Michael"
* telecom[0].system = #phone
* telecom[0].value = "+351777777777"
* telecom[1].system = #email
* telecom[1].value = "michael.johnson@email.com"
* gender = #male
* birthDate = "2008-10-22"
