Profile: ObservationSymptomDuration
Parent: Observation
Id: ObservationSymptomDuration
Title: "Observation - Symptoms Duration"
Description: "This profile represents the constraints applied to the Observation resource by the Triage and Counseling Clinical System (TCCS) FHIR Implementation Guide. 
It describes the minimum expectations for the Observation resource when used in the system's composition or in one of the referred resources. 
It is used to represent the duration of symptoms and the bodySite where they are located."
* code = LNC#64748-7
* encounter 1..
* value[x] ^short = "Symptoms duration"
* value[x] only Quantity
* bodySite from $bodySiteVS

Profile: ObservationSymptoms
Parent: Observation
Id: ObservationSymptoms
Title: "Observation - Symptoms"
Description: "This profile represents the constraints applied to the Observation resource by the Triage and Counseling Clinical System (TCCS) FHIR Implementation Guide. 
It describes the minimum expectations for the Observation resource when used in the system's composition or in one of the referred resources. 
It is used to represent the symptoms."
* code from $symptomsVS
* encounter 1..
* value[x] only string

Alias:  LNC = http://loinc.org
Alias: $bodySiteVS = https://ehr.testing.p5.pt/api/fhir/ValueSet/bodySite
Alias: $symptomsVS = https://ehr.testing.p5.pt/api/fhir/ValueSet/bodySite