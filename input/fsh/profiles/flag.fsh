Profile: FlagCriticalDisease
Parent: Flag
Id: flag-critical-disease
Title: "Flag - Doença critica"
Description: "Este perfil representa a utilização do recurso Flag para referenciar uma doença critica."

* status 1..1
* status = #active
* category 1..1
* category.coding 1..1
* category.coding.code = #clinical
* code 1..1
* code.text 1..1
* subject 1..1
* subject only Reference(Patient)
* period 0..1
* period.start 1..1
* period.end 0..1
* author 1..1
* author only Reference(Practitioner)
* extension 0..*
* extension contains ExtensionFlagDetail named flagDetail 1..1
