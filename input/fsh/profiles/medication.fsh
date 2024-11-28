Profile: MedicationStandard
Parent: Medication
Id: medication-standard
Title: "Medication - Medicação"
Description: "Este perfil define as restrições para o recurso `Medication`, padronizando a documentação de medicamentos, incluindo informações sobre código, ingredientes, forma farmacêutica e quantidade."

* code 1..1 
* code.text 1..1 
* code.coding 1..1 
* code.coding.system = "http://example.org/medications"

* ingredient 1..* 
* ingredient.item[x] only Reference(Substance)
* ingredient.isActive 0..1
* ingredient.strength 0..1
* ingredient.strength.numerator.value 1..1 
* ingredient.strength.numerator.unit 1..1
* ingredient.strength.denominator.value 0..1 
* ingredient.strength.denominator.unit 0..1

* form 0..1
* form.coding 1..1 
* form.coding.system = "http://example.org/pharmacological-forms"
* form.text 1..1 

* amount 0..1
