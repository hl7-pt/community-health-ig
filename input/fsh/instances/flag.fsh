Instance: ExampleFlagHighRiskPregnancy
InstanceOf: FlagCriticalDisease
Title: "Exemplo Flag - Doença Critica - Gravidez de risco"
Description: "Exemplo de resource Flag para representar uma doença critica, neste caso uma gravidez de risco."

* status = #active
* category.coding.system = "http://terminology.hl7.org/CodeSystem/flag-category"
* category.coding.code = #clinical
* category.coding.display = "Clinical"
* code.text = "Gravidez de risco"
* subject = Reference(Patient/exemplo-patient-1)
* period.start = "2024-12-01T00:00:00Z"
* author = Reference(Practitioner/exemplo-practitioner-1)
* extension[flag-detail].valueReference = Reference(Condition/exemplo-condition-gravidez-risco)
