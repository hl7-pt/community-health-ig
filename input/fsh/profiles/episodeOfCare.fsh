Profile: EpisodeOfCareStandard
Parent: EpisodeOfCare
Id: episodeOfCare-standard
Title: "Episode Of Care"
Description:  "
Este perfil representa um período estruturado durante o qual um paciente recebe atendimento para um problema de saúde específico ou um conjunto de condições. Ele serve como base para organizar e vincular atividades de saúde relacionadas, como sintomas, problemas, observações e planos de cuidado."
* managingOrganization 1..
* managingOrganization = Reference(P5Organization)
* careManager only Reference(Practitioner)
* status from EpisodeOfCareStatusSubset (required)