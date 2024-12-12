Extension: ExtensionOrganization
Id: Extension-GrantedOrganization
Title: "Extension -  Granted Organization"
Description: "A extensão descrita é uma extensão personalizada do FHIR criada para associar recursos a uma organização específica.
Essa extensão é útil para definir um controle de acesso baseado em organizações em um sistema de saúde interoperável.
Além disso, o uso dessa extensão também pode ser aplicado para validação durante operações de criação ou atualização de recursos.
O servidor pode, por exemplo, exigir que a extensão esteja presente e validar se o cliente tem permissão para associar o recurso àquela organização.
Isso assegura que cada dado seja corretamente atribuído e acessado apenas por quem tem autorização."
* valueReference = Reference(TCCSTeam)

Extension: ExtensionFlagDetail
Id: flag-detail
Title: "Extension - Flag Detail"
Description: "Detalhes sobre a condição crítica sinalizada para um paciente."
Context: Flag
* value[x] only Reference(Condition)
