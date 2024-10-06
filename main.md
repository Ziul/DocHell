---
pretitle: Pró-Reitoria Acadêmica
title: "Curso de Tecnologia em Análise e Desenvolvimento de Sistemas
"
subtitle: "Estudo de Caso Apagão Cibernético"
author:
  - name: Example Author
    affiliation: Universidade de Brasília
    location: Brasília, Brazil
    email: user@mail.com
  - name: Another Author
    affiliation: Universidade Católica de Brasília
    location: Brasília, Brazil
    email: user2@mail.com
  - name: And The Last Author
    affiliation: Universidade Católica de Brasília
    location: Brasília, Brazil
    email: user2@mail.com
professor: 
  name: Hélio Guilherme Dias Silva
  title: Professor
pdfsubject: Markdow example for LaTeX
keywords: 
    - Markdown
    - Example
type: SPECIFICATION
status: DRAFT
bibliography: bibliography.bib
csl: abnt.csl
date: "2024"
mainfont: Arial
fontsize: 12pt
# numbersections: yes
lang: pt
cover: yes
nocite: yes # Includes all entries in bibliography.bib file
titlepage: true
book: true
titlepage-background: assets/cover.pdf
toc: true
toc-own-page: true
disable-header-and-footer: true
toc-title: Sumário
biblio-title: Referências Bibliográficas
biblatexoptions:
  - backend=biber
  - style=numeric
resumo: Estudo de caso apresentado ao curso superior de Tecnologia em Análise e Desenvolvimento de Software, da Escola de Educação, Tecnologia e Comunicação da Universidade Católica de Brasília, como requisito parcial da disciplina Qualidade de Software e Governança.
---

# Introdução

Este estudo de caso descreve o apagão cibernético global ocorrido em 19 de julho de 2024, verificando o contexto em que o apagão ocorreu, as causas, os impactos e a resposta dos envolvidos. A análise técnica do caso é fundamentada na ISO/IEC 12.207, norma de padronização dos processos de ciclo de vida do software, e leva em consideração as boas práticas apresentadas na norma para apresentar possíveis medidas a serem implementadas para a prevenção de ocorrências futuras. Também foram buscadas referências nas normas CMMI e  MPS.BR, que avaliam os processos de Engenharia de Software em níveis de maturidade.

# Descrição do Caso

Em 19 de julho de 2024, às 04:09 UTC, como parte das operações em andamento, a CrowdStrike lançou uma atualização de configuração do sensor para sistemas Windows. Essa atualização de configuração continha um erro de out-of-bounds read, ou seja, tentava acessar um endereço de memória ao qual não existia ou não tinha permissão de leitura. Tal erro ao acontecer a nível de kernel, como era o caso, produz o conhecido erro de tela azul no Windows e mantém o dispositivo em um estado de reinício contínuo (registrados como incidentes KB5042426[@KB5042426] e KB5042421[@KB5042421] pela Microsoft ).

As interrupções foram registradas em todo o mundo, refletindo o amplo uso do Microsoft Windows e do software CrowdStrike por corporações globais em diversos setores empresariais. Na época do incidente, a CrowdStrike afirmou ter mais de 24.000 clientes, incluindo quase 60% das empresas da Fortune 500 e mais da metade das empresas da Fortune 1000. Em 20 de julho, a Microsoft estimou que 8,5 milhões de dispositivos foram afetados pela atualização, o que, segundo a empresa, representava menos de um por cento de todos os dispositivos Windows.

Interrupções generalizadas foram imediatamente relatadas em vários países, com grandes perturbações globais experimentadas pelo público em geral, varrendo de leste a oeste de fuso horário em fuso horário. Às 04:09 UTC de 19 de julho, quando a atualização com falha foi emitida, era o meio do dia útil na Oceania e na Ásia, as primeiras horas da manhã na Europa e meia-noite em grande parte das Américas.

Alguns países foram menos afetados. A China, que tem buscado a autossuficiência em TI, sofreu pouco impacto em serviços-chave como companhias aéreas e bancos, embora empresas estrangeiras e hoteis de luxo no país tenham sido afetados. Rússia e Irã — ambos restritos por sanções internacionais de utilizar serviços de empresas americanas de alta tecnologia — não relataram interrupções.

No Brasil, o banco Bradesco confirmou ter sido afetado, atualizando seu aplicativo móvel para temporariamente impedir o login dos usuários. Clientes dos bancos Pan, do Next e do Neon também relataram problemas.


# Análise Técnica

O Apagão Cibernético foi causado por falhas técnicas na atualização do sensor CrowdStrike Falcon para Windows. A origem do problema estava em uma incompatibilidade de parâmetros: o Tipo de Modelo IPC esperava 21 parâmetros, mas apenas 20 foram fornecidos. Essa discrepância, não detectada durante o desenvolvimento e os testes, resultou em uma leitura fora dos limites da memória.

O erro ocorreu porque o Interpretador de Conteúdo tentou acessar um 21º parâmetro inexistente, levando a uma falha no driver csagent.sys, que gerou a "Tela Azul da Morte" (BSOD). A distribuição em larga escala do conteúdo problemático amplificou o impacto, afetando muitos sistemas globalmente. 

Os processos de validação e teste não foram abrangentes o suficiente para identificar a incompatibilidade, pois os testes usaram critérios genéricos que mascararam o problema. Isso levou a uma falha crítica não detectada até que já tivesse causado um efeito cascata em vários sistemas.

A incompatibilidade entre os parâmetros esperados (21) e fornecidos (20) mostrou falhas nas especificações do sistema. Um design mais robusto e verificações de segurança adequadas poderiam ter prevenido problemas.

Os testes e a verificação não foram suficientes para detectar a falha, enquanto o gerenciamento inadequado de configuração resultou na distribuição do erro. Melhorias na garantia de qualidade e na confiabilidade do sistema, como auditorias, testes de regressão, monitoramento em tempo real e mecanismos de recuperação, são necessárias.

Por fim, uma abordagem integrada é essencial para segurança, planejamento de contingência e análise das interações no sistema.
 As empresas precisam demonstrar ao público externo que cumpre com o que declara em relação a segurança e conformidade. As certificações de qualidade como as ISOs, faz com que as empresas que a possuem se sobressaiam em relação às outras, pois passam segurança para os clientes, está seguindo um padrão de qualidade traz credibilidade e confiança.

A CrowdStrike  garantir a confiança dos clientes, de que as operações de negócios estão seguras e em conformidade, oferece uma garantia aos clientes do Falcon Complete que cobre até US$ 1 milhão em despesas com resposta a ataques caso haja um incidente de segurança no ambiente protegido pelo CrowdStrike, faz validação e a acreditação externas como: PCI DSS v3.2, FedRAMP,  ESCUDO DE PROTEÇÃO DA PRIVACIDADE UE-EUA,  ESCUDO DE PROTEÇÃO DA PRIVACIDADE SUÍÇA-EUA,  HIPAA, NIST, FFIEC,  NSA-CIRA, CREST,  SOC 2,  TESTE AV-COMPARATIVES,  CSA-STAR,  AMTSO,  VPAT.

Tendo em vista que o apagão cibernético de 19/07/2024, foi causado por uma falha de atualização do sensor de segurança Falcon da empresa CrowdStrike. Podemos presumir que não foi realizada uma testagem adequada da atualização antes que fosse liberada para os clientes, podemos identificar então uma falha nos processos de requisitos de software. Para que mais episódios como este não ocorram novamente é necessário adotar algumas medidas de gestão de processos, segurança e requisitos de software.

De acordo com o modelo CMMI (Capability Maturity Model Integration) poderíamos adotar as seguintes medidas como a Gestão de Configuração por exemplo, com a finalidade de implementar um sistema de gestão de configuração para controlar mudanças que ocorram no software e fazer com que apenas versões aprovadas sejam liberadas. Outra medida seria a Verificação e Validação, que seria a realização de verificações e validações feitas de forma contínua com a finalidade de localizar defeitos e assim corrigi-los antes que sejam disponibilizados para os usuários. Uma terceira medida do CMMi que poderia ser adotada seria a Gestão de Riscos, que consiste em desenvolver um plano que identifique, analise e mitigue riscos associados às atualizações de software.

Analisando o modelo MPS.BR (Melhoria de Processo do Software Brasileiro) podemos identificar processos de software que podem ser adotados com a finalidade de evitar incidentes como este, sendo eles o Gerenciamento de Projetos, que consiste em estabelecer práticas para o gerenciamento de processos tais como o monitoramento, o planejamento e também o controle do desenvolvimento e manutenção do software. Outro importantíssimo ponto é a Garantia da Qualidade de software, segundo o MPS.BR poderia ser implementado um processo que garanta que os produtos de software atendam todos os requisitos especificados e estejam livres de defeitos. O MPS.BR conta também com uma Gestão de configuração bastante similar com a do CMMi (citada anteriormente), que garantiria que todas as mudanças de software sejam devidamente controladas e documentadas.

Podemos citar também a ISO/IEC 12207 que conta com o Processo de Manutenção, que apresenta um processo de manutenção que conta com a análise dos impactos de eventuais mudanças e a implementação de correções de forma controlada. Essa ISO também fala sobre outro ponto que seria o Processo de Desenvolvimento, onde práticas de desenvolvimento seriam adotadas essas práticas contam com rigorosos testes e revisões, que visam garantir a qualidade do software e por fim podemos citar a Gestão de Incidentes, onde um processo seria adotado, onde falhas no sistemas seriam respondidas de forma veloz visando minimizar o impacto das mesmas mitigando assim os danos causados aos usuários uma vez que o apagão cibernético da CrowdStrike afetou não somente ambientes corporativos civis comuns, uma vez que diversos setores foram afetados como bancos e aeroportos.

A adoção dessas e diversas outras práticas quando integradas e devidamente implementadas diminuem bastante as chances de incidentes como este ocorrer, e caso venham a acontecer será possível resolvê-lo com mais rapidez e restaurar a normalidade do sistema o mais rápido o possível.

Vale citar também a ISO/IEC 27.001 que trata justamente do ponto da segurança cibernética, tendo em vista que essa falha deixou o sistema suscetível a ataques. Esta norma especifica os requisitos para um sistema de gestão de segurança da informação (SGSI). Ela possibilita que as organizações protejam suas informações de maneira sistemática e eficaz. A ISO 27.001 deixa claro a importância do monitoramento feito de forma contínua para os sistemas de segurança da informação. Isso teria possibilitado a CrowdStrike ter agido de forma mais rápida e corrigido o problema da forma mais eficaz possível. Outro ponto de extrema importância seriam os controles técnicos, que possibilitam a identificação e correção do erro antes mesmo de sua implementação, ou seja, antes de chegar aos usuários. Pois esse controle conta com  a realização de auditorias de segurança e de testes automatizados, tendo em vista que a falta de testes feita de forma adequada foi uma das causadoras do apagão. 



# Considerações Finais

O apagão cibernético de 2024 evidenciou lacunas críticas no processo de gestão de atualizações de software da CrowdStrike, em especial no que diz respeito à insuficiência de validação prévia e ao controle inadequado das mudanças. Embora a ISO/IEC 12207 forneça diretrizes robustas para o ciclo de vida de desenvolvimento de software, sua implementação, neste caso, revelou-se superficial, uma vez que a falta de testes rigorosos e específicos permitiu que a falha passasse despercebida. A dependência de testes genéricos, mencionada no caso, indica que os procedimentos de verificação recomendados pela norma não foram aplicados de forma adequada. 

Além disso, a abordagem reativa da CrowdStrike, que não conseguiu prever os riscos associados à atualização, contraria as recomendações da ISO/IEC 27001, que exige um monitoramento contínuo e mecanismos preventivos de segurança cibernética. A norma enfatiza a importância de uma gestão proativa e a implementação de controles técnicos que poderiam ter evitado o incidente, especialmente considerando o impacto global e os setores críticos afetados. Este cenário aponta para a necessidade de revisitar e reforçar as práticas de conformidade às normas de segurança, indo além do simples cumprimento burocrático para adotar medidas preventivas mais eficazes.

A análise do apagão de 2024 evidencia que a adesão às normas ISO, CMMI e MPS.BR não é suficiente para garantir a segurança e a robustez dos sistemas. O incidente demonstra que o sucesso dessas normas depende de sua aplicação rigorosa e adaptada ao contexto operacional de cada organização, especialmente em ambientes críticos. Para evitar falhas semelhantes, é fundamental que as empresas não se limitem à conformidade de mercado, mas invistam em auditorias contínuas, testes personalizados e uma gestão de processos que considere as particularidades e os riscos específicos de seus sistemas.
