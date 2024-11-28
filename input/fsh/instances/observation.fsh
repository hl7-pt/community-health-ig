Instance: ExampleObservationSleepDisorder
InstanceOf: ObservationSymptom
Title: "Exemplo Observation - Desordem do sono"
Description: "An example Observation resource representing a sleep disorder symptom."
* id = "exemplo-observation-desordem-sono"
* status = #final
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #75325-1
* code.coding[0].display = "Symptom"
* subject.reference = "Patient/exemplo-patient-1"
* encounter.reference = "Encounter/exemplo-encounter-ia-registo"
* valueCodeableConcept.coding[0].system = "https://ehr.p5.pt/terminology/CodeSystem/symptoms"
* valueCodeableConcept.coding[0].code = #125
* valueCodeableConcept.coding[0].display = "Sleep disorder"
* note[0].authorReference.reference = "RelatedPerson/exemplo-relatedPerson-1"
* note[0].text = "this symptom just started a few hours ago"
* component[0].code.coding[0].system = "symptoms-properties"
* component[0].code.coding[0].code = #isSpecific
* component[0].valueBoolean = true
* component[1].code.coding[0].system = "symptoms-properties"
* component[1].code.coding[0].code = #isNonSpecific
* component[1].valueBoolean = false
* component[2].code.coding[0].system = "symptoms-properties"
* component[2].code.coding[0].code = #isGeneral
* component[2].valueBoolean = false

Instance: ExampleObservationPain
InstanceOf: ObservationSymptom
Title: "Exemplo Observation - Dor"
Description: "An example Observation resource representing a symptom of pain."
* id = "exemplo-observation-dor"
* status = #final
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #75325-1
* code.coding[0].display = "Symptom"
* subject.reference = "Patient/exemplo-patient-1"
* encounter.reference = "Encounter/exemplo-encounter-ia-registo"
* valueCodeableConcept.coding[0].system = "https://ehr.p5.pt/terminology/CodeSystem/symptoms"
* valueCodeableConcept.coding[0].code = #32
* valueCodeableConcept.coding[0].display = "Pain"
* note[0].authorReference.reference = "RelatedPerson/exemplo-relatedPerson-1"
* note[0].text = "this symptom just started a few hours ago"
* component[0].code.coding[0].system = "symptoms-properties"
* component[0].code.coding[0].code = #isSpecific
* component[0].valueBoolean = true
* component[1].code.coding[0].system = "symptoms-properties"
* component[1].code.coding[0].code = #isNonSpecific
* component[1].valueBoolean = false
* component[2].code.coding[0].system = "symptoms-properties"
* component[2].code.coding[0].code = #isGeneral
* component[2].valueBoolean = false

Instance: ExampleObservationDuracaoSymptomDurationAndLocation
InstanceOf: ObservationSymptomDurationBodySite
Title: "Exemplo Observation - Duração de sintomas e localização"
Description: "An example Observation resource representing the duration and location of symptoms."
* id = "exemplo-observation-duracao-sintomas-localizacao"
* status = #final
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #64748-7
* subject.reference = "Patient/exemplo-patient-1"
* encounter.reference = "Encounter/exemplo-encounter-ia-registo"
* valueQuantity.value = 2
* valueQuantity.unit = "days"
* bodySite.coding[0].system = "https://ehr.p5.pt/terminology/CodeSystem/body-silhouette"
* bodySite.coding[0].code = #2
* bodySite.coding[0].display = "Head"
