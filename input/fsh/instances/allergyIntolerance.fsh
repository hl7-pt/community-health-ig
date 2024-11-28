Instance: ExampleAllergyIntolerance
InstanceOf: AllergyIntolerancePatientAllergy
Title: "Exemplo AllergyIntolerance"
Description: "An example AllergyIntolerance resource for a patient with a food allergy."
* id = "example-allergyIntolerance"

* clinicalStatus.coding[0].code = #active

* verificationStatus.coding[0].code = #unconfirmed

* type = #allergy

* category[0] = #food

* criticality = #low

* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #235719002
* code.coding[0].display = "foodIntolerance"

* patient.reference = "Patient/exemplo-patient-1"

* onsetAge.value = 20
* onsetAge.unit = "years"

* recordedDate = "2024-02-09T18:17:42.599Z"
* lastOccurrence = "2024-02-07T18:17:42.599Z"

* reaction[0].substance.coding[0].system = "http://snomed.info/sct"
* reaction[0].substance.coding[0].code = #3718001
* reaction[0].substance.coding[0].display = "Cow's milk"

* reaction[0].manifestation[0].coding[0].system = "http://snomed.info/sct"
* reaction[0].manifestation[0].coding[0].code = #2919008
* reaction[0].manifestation[0].coding[0].display = "Nausea, vomiting and diarrhea"

* reaction[0].description = "some text"
* reaction[0].onset = "2024-02-08T18:17:00.000Z"
* reaction[0].severity = #severe

* reaction[0].exposureRoute.coding[0].system = "http://snomed.info/sct"
* reaction[0].exposureRoute.coding[0].code = #6064005
* reaction[0].exposureRoute.coding[0].display = "Topical route"

* encounter.reference = "Encounter/exemplo-encounter-seguimento"
