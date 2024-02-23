Profile: PatientTCCS
Parent: Patient
Id: PatientTCCS
Title: "Patient (TCCS)"
Description: "This profile represents the constraints applied to the Patient resource by the Triage and Counseling Clinical System (TCCS) FHIR Implementation Guide. It describes the minimum expectations for the Patient resource when used in the system's composition or in one of the referred resources.
In healthcare, Patient refers to an individual, and specific demographic information must be recorded and maintained up to date."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "url"
* identifier ^slicing.rules = #open
* identifier contains
    HealthcareNumber 0..1 MS
* identifier[HealthcareNumber].system = $FHIRP5

Alias: $FHIRP5 = https://ehr.testing.p5.pt/api/fhir
