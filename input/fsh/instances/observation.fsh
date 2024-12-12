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

Instance: ExampleObservationNumberHealthcareVisits12Months
InstanceOf: ObservationNumberHealthcareVisitsLast12Months
Title: "Exemplo Observation -  Número de visitas a unidades de saúde nos últimos 12 Meses"
Description: "Exemplo representando o número de visitas a unidades de saúde nos últimos 12 meses."
* id = "exemplo-observation-number-healthcare-visits-last-12-months"
* status = #registered
* code.coding.system = "http://ehr.p5.pt/ValueSet/observation-values"
* code.coding.code = #healthcare-visits-12-months
* code.coding.display = "Numero de visitas a uma unidade de saude nos ultimos 12 meses"
* subject.reference = "Patient/example"
* effectiveDateTime = "2024-12-11"
* valueInteger = 5

Instance: ExampleObservationPregnancy
InstanceOf: ObservationPregnancy
Title: "Exemplo Observation - Gravidez"
Description: "Instância de uma observação representando o estado de gravidez de uma paciente."
* id = "exemplo-observation-pregnancy"
* status = #registered
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #77386006
* code.coding.display = "Pregnant"
* effectiveDateTime = "2024-12-01"
* subject = Reference(Patient/exemplo-patient-1)

* component[0].code.coding.system = "http://loinc.org"
* component[0].code.coding.code = #49051-6
* component[0].code.coding.display = "Gestational age in weeks"
* component[0].valueQuantity.value = 20
* component[0].valueQuantity.unit = "weeks"
* component[0].valueQuantity.system = "http://unitsofmeasure.org"
* component[0].valueQuantity.code = #wk

* component[1].code.coding.system = "http://loinc.org"
* component[1].code.coding.code = #63962-5
* component[1].code.coding.display = "Pregnancy number [PhenX]"
* component[1].valueInteger = 2

* component[2].code.coding.system = "http://loinc.org"
* component[2].code.coding.code = #11636-8
* component[2].code.coding.display = "Number of live births"
* component[2].valueInteger = 1
