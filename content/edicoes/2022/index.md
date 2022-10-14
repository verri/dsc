---
title: Data Science Challenge @ ITA 2022
subtitle: Instituto Tecnológico de Aeronáutica (ITA) | INSCRIÇÕES ABERTAS

summary: Quarta edição do evento.
abstract: ""

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: "2022-10-03T00:00:00Z"
date_end: "2022-10-03T00:00:00Z"
all_day: true

# Schedule page publish date (NOT talk date).
publishDate: "2022-10-04T00:00:00Z"

authors: []
tags: []

# Is this a featured talk? (true/false)
featured: true

image:
  caption: 'Apoio: [Quantique](http://quantm3.com/), [ITAEx](https://itaex.com.br/)'
  focal_point: Right

url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""

# Markdown Slides (optional).
#   Associate this talk with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides:

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects:
---

{{% callout warning %}}
Inscreva-se <a href="https://forms.gle/ywPk2JZvamFjUaNy8" target="_blank">aqui</a>.
Para dúvidas, consulte [o FAQ](#faq).
{{% /callout %}}

Em sua quarta edição, o DSC @ ITA 2022 contará com a parceria da empresa de gestão de investimentos [Quantique](http://quantm3.com/) para proposta do desafio e apoio do [ITAEx](https://itaex.com.br/).
## Quantique

A Quantique é uma nova empresa global de gestão de investimentos focada em estratégias quantitativas com sede em São Paulo. A equipe possui ampla experiência no mercado brasileiro e internacional, tendo trabalhado por anos em algumas das organizações mais bem-sucedidas do setor financeiro e na academia. A empresa utiliza algoritmos sofisticados e métodos matemáticos para analisar dados globais, prever preços em diferentes mercados e construir portfólios. Saiba mais em [QuantM3.com](http://quantm3.com/).

## Desafio

Os competidores devem ser alunos matriculados em algum curso de graduação ou pós-graduação em instituições públicas ou privadas de ensino no Brasil. Cada equipe deve ser composta por até 3 membros.

Como tradicionalmente, o desafio será dividido em Fase 1 e Fase 2.

A Fase 1 será constituída por um problema de predição a ser divulgado na abertura do evento. Nesta fase eliminatória, apenas 5 equipes serão classificadas.

Já na Fase 2, um novo desafio será proposto e as equipes classificadas deverão apresentar, dia 25/11, uma prova de conceito e seus resultados preliminares.

## Premiação

No final da Fase 2, cada membro dos primeiros três times receberão as respectivas premiações:

- 1° colocação: Kindle Oasis (32 GB) + Gift card da Amazon de R$500 + Kit Quantique
- 2° colocação: Kindle Paperwhite (32 GB) + Kit Quantique
- 3° colocação: Kit Quantique

## Datas importantes

- 30/09 à 14/10  -- Período de Inscrição
- 14/10 às 16:00 -- Início da Fase 1 com abertura oficial via Google Meet
- 21/10 às 23:59 -- Encerramento da Fase 1 e limite para submissão da solução da equipe
- 18/11 -- Divulgação da pontuação final e equipes classificadas para a Fase 2
- 18/11 -- Início da Fase 2 e divulgação do novo desafio
- 25/11 às 9:00 -- Encerramento via Google Meet e transmitido pelo Facebook, com apresentações das equipes

Horários em UTC-3 (horário de Brasília).

## Inscrição

Preencha o [formulário de inscrição](https://forms.gle/ywPk2JZvamFjUaNy8) e aguarde a validação da coordenação do evento.

Atente-se ao [regulamento](https://docs.google.com/document/d/e/2PACX-1vQ5eSK-CTD4sAfXq_kY3xBAz-AbfMQktj6x9BziXAUjg6odmRXFpm0AO_xMnFRnjRtWbglKMQOOAjq8/pub).

## Fase 1

A primeira etapa basicamente compreende a predição de $k = 20$ pregões futuros dos ativos que compõem o índice SP500. O SP500 é um índice formado por 500 grandes empresas listadas em bolsas americanas composto por, curiosamente, 503 ativos. A listagem dos ativos pode ser encontrada, por exemplo, no [Wikipedia: SP500](https://en.wikipedia.org/wiki/List_of_S%26P_500_companies).

Para um dado ativo $i$, considere seu log-retorno de $k$ posições atrás correspondente ao dia de pregão $t$ como

$$r_{i,t} = \ln \frac{p_{t}}{p_{t-k}}\text{,}$$

onde $p_j$ é seu preço de fechamento no dia de pregão $j$.

Cada time terá até 21/10 para submeter o log-retorno dos dias **24/10 à 18/11**, representado aqui por $t=[1,20]$. Ou seja, deverão ser reportados os log-retornos dos dias **[24/10, 18/11]** relativos, respectivamente, aos dias anteriores **[26/09, 21/10]**.

Não há restrições para a solução, apenas é exigido que as bases de dados utilizadas sejam públicas. Veja as fontes sugeridas ao final deste documento. Adicionalmente, as 5 melhores equipes deverão também submeter o modelo e dados de treinamento utilizados nesta primeira fase.

O ranqueamento dos times será feito com base nos erros

$$e_{i,t} = r_{i,t} - \hat{r}_{i,t}$$

entre o retorno previsto $\hat{r}_{i,t}$ e realizado $r_{i,t}$ de um ativo $i$ no pregão $t$; a variância da amostra

$$s^2_i = \frac{1}{k-1} \sum_{t=1}^{k} (e_{i,t} - \overline{e}_{i})^2$$

dos erros, onde $\overline{e}_{i}$ é a média destes erros; e o erro quadrático médio

$$\text{EQM}_i = \frac{1}{k} \sum_{t=1}^{k} ( e_{i,t} )^2$$

entre o retorno previsto $\hat{r}_{i,t}$ e realizado ${r}_{i,t}$ de cada ativo $i$.

Os times serão ranqueados em ordem crescente de acordo com

$$\text{Score} = \sum_{i=1}^{503} \sqrt{EQM_i + s_i^2}\text{.}$$

A lista final de colocados serão divulgados no dia 18/11 após o fechamento do pregão. As 5 melhores equipes seguem para Etapa 2. Divulgaremos semanalmente no site, para os primeiros $k$ dias realizados, os resultados parciais dos times que enviarem as previsões.

### Formato

Cada time deverá submeter um arquivo .csv de acordo com o modelo '[predicao.csv](https://drive.google.com/file/d/1wPkBfoBp2HHlXLwIb0D2k_p2xLMk0Uf8/view?usp=sharing)' disponível na pasta compartilhada '[Submissão](https://drive.google.com/drive/folders/1bQVj1sx4_yCRPkXlh1c4YuH20Y0l9nf8?usp=sharing)'.

O formato exige:

- colunas separadas por ',' (vírgulas)
- valores com decimais utilizando '.' (ponto)
- Primeira coluna com nome 'Dia'
- Demais colunas são os tickers dos ativos da SP500 em ordem crescente
- Cada linha deve conter o **retorno** referente a um dia previsto

Para garantir que o formato está correto, foi criado um [script simples em python](https://drive.google.com/file/d/1bQmBaW2tCsraRrokUYCB-reJOGv4ilNQ/view?usp=sharing) para testar seu arquivo antes da submissão.

```bash
# teste antes de submeter
python check_submission.py arquivo.csv
```

As submissões serão realizadas via Google Forms. Será fornecido um link via email, para as equipes submeterem suas previsões. Apenas a última submissão será considerada.

**Importante**: as submissões devem ser feitas com o mesmo email utilizado na inscrição, ou não serão válidas.

## FAQ

1. Até quando posso me inscrever?<br>Você pode se inscrever ou alterar sua inscrição até o dia 14/10. Para alteração, utilize o link indicado no email de confirmação de inscrição.
2. Quais são as regras do evento?<br>Verifique o [regulamento](https://docs.google.com/document/d/e/2PACX-1vQ5eSK-CTD4sAfXq_kY3xBAz-AbfMQktj6x9BziXAUjg6odmRXFpm0AO_xMnFRnjRtWbglKMQOOAjq8/pub).
3. Como faço para encontrar outros inscritos a fim de montar uma equipe?<br>Utilize nossas redes sociais para se apresentar e conhecer outros competidores. Em nosso canal [drone-comp no Discord](https://discord.gg/kTpTdKzFzn), haverá um canal exclusivo para este fim.
4. Meu time pode participar somente online? Sim. Neste caso, a apresentação da Fase 2 será feita de maneira virtual.

## Apoio

Conheça nossos apoiadores:

- [Quantique](http://quantm3.com/)
- [ITAEx](https://itaex.com.br/)

## Social

Siga-nos e também acompanhe novidades em:

- [Facebook](https://www.facebook.com/dsc.at.ita)
- [LinkedIn](https://www.linkedin.com/company/ita-data-science-challenge)
- [Canal do DroneComp no Discord](https://discord.gg/kTpTdKzFzn)
