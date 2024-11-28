Profile: QuestionnaireResponseApp
Parent: QuestionnaireResponse
Id: questionnaire-response-app
Title: "Questionnaire Response - Questionário responsido na app"
Description: "Este perfil especifica as restrições para o recurso `QuestionnaireResponse` para capturar respostas completas de questionários, associadas a um paciente e, opcionalmente, a um encontro clínico."

* status 1..1 MS
* status = #completed (exactly)

* subject 1..1 MS

* encounter 1..

* item 1..* MS
* item.linkId 1..1 MS
* item.linkId ^definition = "Identifier for the question in the questionnaire."

* item.answer 1..* MS
* item.answer.value[x] only string
* item.answer.valueString MS
