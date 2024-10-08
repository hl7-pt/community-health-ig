
### Introdução

Na aplicação clínica de triagem e aconselhamento, o sistema de triagem é projetado para receber informações de um paciente. Essas informações são então transmitidas a um algoritmo de inteligência artificial, que posteriormente fornece um ou mais diagnósticos potenciais. Durante esse encontro inicial, os sintomas do paciente e algumas informações demográficas são registrados.

Após isso, um profissional médico examina o caso e avalia o diagnóstico identificado pelo sistema de IA. Subsequentemente, o prestador de saúde entra em contato com o paciente para obter mais detalhes, incluindo prescrições frequentes, alergias e quaisquer outras informações relevantes necessárias para abordar o problema. Após a comunicação com o paciente, um plano de tratamento é formulado, abrangendo prescrições potenciais ou encaminhamentos para serviços ambulatoriais, consultas ou até mesmo serviços de emergência, conforme considerado apropriado.

Esse fluxo de trabalho está descrito na Figura 1.

<p><strong>Fluxo de Trabalho do Avaliador de Sintomas</strong></p>
<img src="SymptomEvaluatorWorkflow.png" class="figure-img img-responsive img-rounded center-block" style="width: 100%;">


#### FHIR WORKFLOW

Na Figura 2 está representado o mapeamento de recursos FHIR para este cenário. A imagem ilustra a integração e o fluxo de dados entre diferentes entidades e processos em um sistema de triagem que utiliza inteligência artificial.

<p><strong>FHIR Resources Workflow</strong></p>
<img src="FHIRWorkflow.png" class="figure-img img-responsive img-rounded center-block" style="width: 100%;">

Na aplicação do avaliador de sintomas, o sistema de triagem é projetado para receber informações de um paciente e, em seguida, processá-las por meio de um algoritmo de inteligência artificial que fornece um ou mais diagnósticos possíveis. Durante esse encontro inicial, os sintomas do paciente e algumas informações demográficas são registrados como Observações e associados a um Encontro específico, denominado "Primeira interação do Avaliador de Sintomas".

O diagnóstico inicial, identificado pelo algoritmo de IA e representado como uma Condição, é então revisado por um profissional de saúde, representado no mapa como um Prestador de Saúde. Esse profissional de saúde avalia o diagnóstico fornecido pelo sistema de IA e contata o paciente para aprofundar a história médica, solicitando informações adicionais, como prescrições frequentes, alergias e quaisquer outros detalhes relevantes, que são registrados como Observações, Declarações de Medicamentos e Alergias/Intolerâncias. Com base nessa interação, representada como um segundo Encontro ("Interação da Equipe P5"), o gestor de cuidados desenvolve um Plano de Cuidados, que pode incluir prescrições de medicamentos (Pedido de Medicamento) e encaminhamentos para serviços ambulatoriais, consultas ou serviços de emergência, conforme apropriado para a situação. O mapeamento FHIR facilita a gestão dos episódios de cuidados, representados como Episódio de Cuidados, abrangendo toda a jornada do paciente desde a interação inicial até o acompanhamento do tratamento, garantindo que as informações clínicas sejam compartilhadas de forma estruturada e interoperável entre diferentes sistemas de informação em saúde.

Vale ressaltar que todos os recursos estão associados ao recurso Paciente. Esse detalhe foi omitido no gráfico apenas para evitar confusão.