Instance: ExampleQuestionnaireResponse
InstanceOf: QuestionnaireResponseApp
Title: "Exemplo QuestionnaireResponse"
Description: "Um exemplo de resource QuestionnaireResponse."
* id = "exemplo-questionnaireResponse"
* status = #completed
* subject.reference = "Patient/exemplo-patient-1"
* encounter.reference = "Encounter/exemplo-encounter-ia-registo"

* item[0].linkId = "image"
* item[0].answer[0].valueString = "https://ehr.p5.pt/admin/#/DocumentReference/1837e813-6c5a-4dc9-ac7b-e8f8bab9a9ab"

* item[1].linkId = "medication"
* item[1].answer[0].valueString = "Sim, tomei"

* item[2].linkId = "consultation"
* item[2].answer[0].valueString = "Sim, fui"
