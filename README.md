# oficina_automotiva

Uma oficina automotiva deseja substituir seus controles feitos em planilhas e anotações por um sistema.

## Getting Started

Antes de inicializar o projeto utilize o seguinte comando:

´´´sh
flutter pub get
flutter run
´´´

## Contexto

Uma oficina automotiva deseja substituir seus controles feitos em planilhas e anotações por um sistema.
Quando uma pessoa leva um veículo até a oficina, o atendente precisa registrar quem é o responsável pelo veículo e identificar corretamente o veículo atendido.
Um mesmo responsável pode possuir mais de um veículo e pode retornar diversas vezes à oficina ao longo do tempo.
Quando um veículo chega para atendimento, é aberto um registro contendo a data de entrada, uma descrição do problema informado pelo cliente, a situação atual do atendimento e os trabalhos que deverão ser realizados.
A oficina possui diferentes tipos de trabalhos, como troca de óleo, alinhamento, revisão de freios, troca de bateria e diagnóstico eletrônico. Cada trabalho possui uma descrição e um valor padrão.
Durante um atendimento, podem ser realizados vários trabalhos diferentes. O valor total do atendimento depende dos trabalhos realizados.
Um mesmo tipo de trabalho pode aparecer em vários atendimentos diferentes.
Durante o processo, algumas informações nunca devem mudar depois que forem definidas, enquanto outras necessariamente mudam. Por exemplo, a situação de um atendimento pode passar por diferentes estados até sua conclusão.


### Requisitos

O sistema deverá permitir:
Registrar as pessoas responsáveis pelos veículos, mantendo informações suficientes para identificação e contato.
Registrar os veículos atendidos pela oficina e associá-los corretamente aos seus responsáveis.
Manter os tipos de trabalhos que a oficina pode executar e seus respectivos valores.
Registrar a entrada de um veículo para atendimento.
Informar o problema relatado pelo cliente no momento da entrada.
Acrescentar um ou vários trabalhos a um atendimento.
Remover um trabalho de um atendimento antes de sua finalização.
Calcular o valor total de um atendimento considerando todos os trabalhos associados a ele.
Alterar a situação de um atendimento durante seu andamento.
Identificar se determinado atendimento ainda está em andamento ou se já foi concluído.
Exibir uma descrição resumida de um atendimento contendo pelo menos veículo, responsável, situação e valor total.
Consultar os atendimentos realizados anteriormente para determinado veículo.
Consultar todos os veículos vinculados a determinada pessoa.
Impedir que um atendimento seja considerado concluído sem possuir pelo menos um trabalho realizado.


### Regras do Domínio

Existem ainda algumas regras que devem ser consideradas na modelagem.
A placa utilizada para identificar determinado veículo não deverá mudar durante a existência daquele objeto no sistema.
A data em que determinado atendimento foi aberto também não deverá ser alterada posteriormente.
Por outro lado, a situação do atendimento necessariamente poderá mudar.
O valor de um tipo de trabalho poderá ser reajustado ao longo do tempo.
Alguns valores utilizados pelo sistema poderão ser constantes e conhecidos antes da execução do programa.


### Requisitos não Funcionais

Além das funcionalidades, considere as seguintes exigências do futuro sistema:
RNF01 — Usabilidade: a futura aplicação deverá poder ser utilizada por funcionários sem conhecimento técnico.
RNF02 — Desempenho: consultas comuns deverão apresentar resultado ao usuário em até dois segundos em condições normais de operação.
RNF03 — Persistência: os dados registrados deverão permanecer disponíveis mesmo após o encerramento da aplicação.
RNF04 — Integridade: o sistema não deverá permitir registros que violem os relacionamentos definidos no modelo de dados.
RNF05 — Portabilidade: a solução deverá ser projetada considerando futura utilização em dispositivos móveis.
RNF06 — Manutenibilidade: as responsabilidades deverão ser distribuídas adequadamente entre as classes, evitando concentrar toda a lógica em uma única classe.
RNF07 — Consistência: valores monetários, datas e identificadores deverão possuir representação coerente em todo o sistema.


### Documentação

A documentação do projeto contendo o diagrama de classes e o DER podem ser encontrados em:
https://docs.google.com/document/d/1e8H2DPf49KUlKOxCKHkybmvanyZIVCmG/edit?usp=sharing&ouid=109617091924147987189&rtpof=true&sd=true

## Repositório

O repositório que está sendo utilizado para armazenar o código está disponível em:
https://github.com/JoaoCarlosWinck/oficina_automotiva