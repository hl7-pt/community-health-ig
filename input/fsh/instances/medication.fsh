Instance: ExampleMedicationParacetamol
InstanceOf: MedicationStandard
Title: "Exemplo Medication - Ben-u-ron"
Description: "An example Medication resource for ben-u-ron Paracetamol 500 mg."
* id = "exemplo-medication-paracetamol"

* code.text = "ben-u-ron Paracetamol 500 mg"
* code.coding[0].system = "http://example.org/medications"
* code.coding[0].code = #BENURON500
* code.coding[0].display = "ben-u-ron Paracetamol 500 mg"

* ingredient[0].itemReference.reference = "Substance/Paracetamol"
* ingredient[0].itemReference.display = "Paracetamol"
* ingredient[0].isActive = true
* ingredient[0].strength.numerator.value = 500
* ingredient[0].strength.numerator.unit = "mg"
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "tablet"

* form.coding[0].system = "http://example.org/pharmacological-forms"
* form.coding[0].code = #tablet
* form.coding[0].display = "Tablet"
* form.text = "Tablet"

* amount.numerator.value = 20
* amount.numerator.unit = "tablets"
