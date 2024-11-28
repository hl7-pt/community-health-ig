Profile: EncounterAIAlgorithm
Parent: Encounter
Id: encounter-ai-algorithm
Title: "Encounter - Iteraction with the artificial intelligence algorithm"
Description: "Este perfil representa as restrições aplicadas ao recurso Encounter pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS).
Descreve as expectativas mínimas para o recurso EpisodeOfCare quando utilizado na composição do sistema ou em um dos recursos referidos.
É utilizado para representar o resultado proveniente da interação com o algoritmo de inteligência artificial."
* status = #finished (exactly)
* class = #EMER
* type.coding.system = "https://ehr.p5.pt/terminology/CodeSystem/service" (exactly)
* type.coding.code = #avaliador-de-sintomas (exactly)
* type.coding.display = "Avaliador de Sintomas" (exactly)

* serviceType.coding.system = "https://ehr.p5.pt/terminology/CodeSystem/service-type" (exactly)
* serviceType.coding.code = #ai-algorithm (exactly)
* serviceType.coding.display = "Algoritmo de Inteligência Artificial" (exactly)

* episodeOfCare only Reference(EpisodeOfCareStandard)
* subject 1..

Profile: EncounterValidation
Parent: Encounter
Id: encounter-validation
Title: "Encounter - Validation Iteraction"
Description: "Este perfil representa as restrições aplicadas ao recurso Encounter pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS).
Descreve as expectativas mínimas para o recurso EpisodeOfCare quando utilizado na composição do sistema ou em um dos recursos referidos.
É utilizado para representar a validação de dados por parte de um profissional de saude."

* status = #finished
* class = #EMER
* type.coding.system = "https://ehr.p5.pt/terminology/CodeSystem/service" (exactly)
* type.coding.code = #avaliador-de-sintomas (exactly)
* type.coding.display = "Avaliador de Sintomas" (exactly)
* serviceType.coding.system = "https://ehr.p5.pt/terminology/CodeSystem/service-type" (exactly)
* serviceType.coding.code = #validation (exactly)
* serviceType.coding.display = "Validação de caso" (exactly)
* episodeOfCare only Reference(EpisodeOfCareStandard)
* subject 1..
* period.start MS

Profile: EncounterFollowUp
Parent: Encounter
Id: encounter-follow-up
Title: "Encounter - Follow-Up Interaction"
Description: "Este perfil representa as restrições aplicadas ao recurso Encounter pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS).
Descreve as expectativas mínimas para o recurso EpisodeOfCare quando utilizado na composição do sistema ou em um dos recursos referidos.
É utilizado para representar a interações entre profissional de saúde e paciente."

* status = #finished
* class = #EMER
* type.coding.system = "https://ehr.p5.pt/terminology/CodeSystem/service" (exactly)
* type.coding.code = #avaliador-de-sintomas (exactly)
* type.coding.display = "Avaliador de Sintomas" (exactly)
* serviceType.coding.system = "https://ehr.p5.pt/terminology/CodeSystem/service-type" (exactly)
* serviceType.coding.code = #follow-up (exactly)
* serviceType.coding.display = "Seguimento de caso" (exactly)
* episodeOfCare only Reference(EpisodeOfCareStandard)
* subject 1..
* period.start MS

Profile: EncounterFinish
Parent: Encounter
Id: encounter-finish
Title: "Encounter - Finish Interaction"
Description: "Este perfil representa as restrições aplicadas ao recurso Encounter pelo Guia de Implementação FHIR do Sistema Clínico de Triagem e Aconselhamento (TCCS).
Descreve as expectativas mínimas para o recurso EpisodeOfCare quando utilizado na composição do sistema ou em um dos recursos referidos.
É utilizado para representar o resultado proveniente da interação fecho de caso entre profissional de saude e paciente"

* status = #finished
* class = #EMER
* type.coding.system = "https://ehr.p5.pt/terminology/CodeSystem/service" (exactly)
* type.coding.code = #avaliador-de-sintomas (exactly)
* type.coding.display = "Avaliador de Sintomas" (exactly)
* serviceType.coding.system = "https://ehr.p5.pt/terminology/CodeSystem/service-type" (exactly)
* serviceType.coding.code = #finish (exactly)
* serviceType.coding.display = "Fecho de caso" (exactly)
* episodeOfCare only Reference(EpisodeOfCareStandard)
* subject 1..
* period.start MS
