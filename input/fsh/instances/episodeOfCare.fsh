Instance: ExampleEpisodeOfCareWaitlist
InstanceOf: EpisodeOfCareStandard
Title: "Exemplo EpisodeOfCare - Episodio em espera"
Description: "An example EpisodeOfCare resource representing an episode on the waitlist with urgency level."
* id = "exemplo-episodeofcare-episodio-em-espera"
* status = #waitlist
* type[0].coding[0].system = "https://ehr.p5.pt/api/fhirValueSet/Urgency"
* type[0].coding[0].code = #1
* type[0].coding[0].display = "Urgent"
* managingOrganization.reference = "Organization/P5Organization"
* patient.reference = "Patient/exemplo-patient-1"
* period.start = "2024-06-10T21:47:44+00:00"

Instance: ExampleEpisodeOfCareActive
InstanceOf: EpisodeOfCareStandard
Title: "Exemplo EpisodeOfCare - Episodio Activo"
Description: "An example EpisodeOfCare resource representing an active episode with urgency level and care manager."
* id = "exemplo-episodeofcare-episodio-activo"
* status = #active
* type[0].coding[0].system = "http://localhost:8081/api/fhirValueSet/Urgency"
* type[0].coding[0].code = #1
* type[0].coding[0].display = "Urgent"
* managingOrganization.reference = "Organization/P5Organization"
* patient.reference = "Patient/exemplo-patient-1"
* careManager.reference = "Practitioner/exemplo-practitioner-1"
* period.start = "2024-06-10T21:47:44+00:00"

Instance: ExampleEpisodeOfCareFinished
InstanceOf: EpisodeOfCareStandard
Title: "Exemplo EpisodeOfCare - Episodio encerrado"
Description: "An example EpisodeOfCare resource representing a finished episode with urgency level and defined period."
* id = "exemplo-episodeofcare-episodio-finalizado"
* status = #finished
* type[0].coding[0].system = "http://localhost:8081/api/fhirValueSet/Urgency"
* type[0].coding[0].code = #1
* type[0].coding[0].display = "Urgent"
* managingOrganization.reference = "Organization/P5Organization"
* patient.reference = "Patient/exemplo-patient-1"
* careManager.reference = "Practitioner/exemplo-practitioner-1"
* period.start = "2024-06-10T21:47:44+00:00"
* period.end = "2024-06-15T21:47:44+00:00"
