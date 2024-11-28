Instance: ExampleEncounterAIAlgorithm
InstanceOf: EncounterAIAlgorithm
Title: "Exemplo Encounter - Resultado algorithmo AI"
Description: "An example Encounter resource representing an AI algorithm evaluation."
* id = "exemplo-encounter-ia-registo"

* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #EMER
* class.display = "emergency"
* type[0].coding[0].system = "https://ehr.p5.pt/terminology/CodeSystem/service"
* type[0].coding[0].code = #avaliador-de-sintomas
* type[0].coding[0].display = "Avaliador de Sintomas"

* serviceType.coding[0].system = "https://ehr.p5.pt/terminology/CodeSystem/service-type"
* serviceType.coding[0].code = #ai-algorithm
* serviceType.coding[0].display = "Algoritmo de Inteligência Artificial"

* subject.reference = "Patient/exemplo-patient-1"

* episodeOfCare[0].reference = "EpisodeOfCare/exemplo-episodeofcare-episodio-em-espera"

* period.start = "2024-11-18T19:20:00+00:00"
* period.end = "2024-11-18T19:20:00+00:00"

Instance: ExampleEncounterValidation
InstanceOf: EncounterValidation
Title: "Exemplo Encounter - Validação de caso"
Description: "An example Encounter resource representing the validation of a case."
* id = "exemplo-encounter-validacao-caso"

* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #EMER
* class.display = "emergency"
* type[0].coding[0].system = "https://ehr.p5.pt/terminology/CodeSystem/service"
* type[0].coding[0].code = #avaliador-de-sintomas
* type[0].coding[0].display = "Avaliador de Sintomas"

* serviceType.coding[0].system = "https://ehr.p5.pt/terminology/CodeSystem/service-type"
* serviceType.coding[0].code = #validation
* serviceType.coding[0].display = "Validação de caso"

* subject.reference = "Patient/exemplo-patient-1"

* episodeOfCare[0].reference = "EpisodeOfCare/exemplo-episodeofcare-episodio-activo"

* period.start = "2024-10-06T13:59:52+00:00"


Instance: ExampleEncounterFollowUp
InstanceOf: EncounterFollowUp
Title: "Exemplo Encounter - Seguimento de caso"
Description: "An example Encounter resource representing the follow-up of a case."
* id = "exemplo-encounter-seguimento"

* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #EMER
* class.display = "emergency"
* type[0].coding[0].system = "https://ehr.p5.pt/terminology/CodeSystem/service"
* type[0].coding[0].code = #avaliador-de-sintomas
* type[0].coding[0].display = "Avaliador de Sintomas"

* serviceType.coding[0].system = "https://ehr.p5.pt/terminology/CodeSystem/service-type"
* serviceType.coding[0].code = #follow-up
* serviceType.coding[0].display = "Seguimento de caso"

* subject.reference = "Patient/exemplo-patient-1"

* episodeOfCare[0].reference = "EpisodeOfCare/exemplo-episodeofcare-episodio-activo"

* period.start = "2024-10-10T14:00:06+00:00"


Instance: ExampleEncounterFinish
InstanceOf: EncounterFinish
Title: "Exemplo Encounter - Fecho de caso"
Description: "An example Encounter resource representing the closure of a case."
* id = "exemplo-encounter-fecho-caso"

* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #EMER
* class.display = "emergency"
* type[0].coding[0].system = "https://ehr.p5.pt/terminology/CodeSystem/service"
* type[0].coding[0].code = #avaliador-de-sintomas
* type[0].coding[0].display = "Avaliador de Sintomas"

* serviceType.coding[0].system = "https://ehr.p5.pt/terminology/CodeSystem/service-type"
* serviceType.coding[0].code = #finish
* serviceType.coding[0].display = "Fecho de caso"

* subject.reference = "Patient/exemplo-patient-1"

* episodeOfCare[0].reference = "EpisodeOfCare/exemplo-episodeofcare-episodio-finalizado"

* period.start = "2024-10-20T14:00:06+00:00"
