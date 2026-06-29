[README.md](https://github.com/user-attachments/files/29478630/README.md)
# Complexidade Econômica da Região Metropolitana de Campinas (2000–2024)

Análise da trajetória produtiva e das oportunidades de diversificação da Região Metropolitana de Campinas (RMC) a partir de dados de comércio exterior, usando o arcabouço de **complexidade econômica** e **product space**.

Este é o primeiro estudo de uma série de análises independentes que combinam **economia** e **ciência de dados** sobre dados abertos da economia brasileira.

---

## O que este estudo responde

A RMC é um dos principais polos industriais do Brasil. Em 25 anos, como evoluiu sua estrutura produtiva — e para onde ela pode crescer? A análise percorre quatro perguntas:

1. **Como evoluiu a base industrial?** — crescimento e diversificação da pauta exportadora.
2. **A região ficou mais competitiva?** — vantagem comparativa revelada (RCA) ante o comércio mundial.
3. **Quão sofisticada é a pauta?** — complexidade econômica comparada a economias industriais.
4. **Para onde diversificar?** — produtos ao alcance das capacidades atuais da região.

---

## Principais resultados

**1. Base industrial — crescimento com diversificação**

As exportações cresceram e a pauta se diversificou: o índice de concentração (HHI) caiu de 0,048 para 0,020 em duas décadas.

![Base industrial da RMC](img/bloco1_painel_RMC.png)

**2. Competitividade — mais produtos com vantagem comparativa**

Os produtos em que a RMC tem vantagem comparativa revelada (RCA > 1) passaram de 120 (2000) para 198 (2024). A trajetória não foi linear: estabilizou nos anos 2010, recuou na pandemia e acelerou depois.

![Competitividade da RMC](img/bloco2_painel_RMC.png)

**3. Sofisticação — complexidade comparável à de economias industriais**

A cesta exportadora da RMC apresenta complexidade econômica próxima à de economias industriais avançadas, com estrutura produtiva similar à de países como Alemanha, Coreia do Sul e Eslovênia.

![Sofisticação da RMC](img/bloco3_painel_RMC.png)

**4. Oportunidades — para onde a região pode crescer**

Cruzando o que a RMC ainda não exporta com vantagem e o que está ao alcance de suas capacidades, dois alvos se confirmam pelos dois métodos testados: **máquinas-ferramenta de acabamento** (SH4 8460) e **máquinas de ensaio de materiais** (SH4 9024).

![Oportunidades da RMC](img/bloco4_painel_RMC.png)

---

## Dados e ferramentas

| | |
|---|---|
| **Fontes** | ComexStat / MDIC (comércio exterior brasileiro por município) · BACI / CEPII (comércio bilateral mundial) |
| **Período** | 2000–2024 |
| **Linguagens** | Python (mineração e estruturação dos dados) · R (análise e visualização) |
| **Método** | Complexidade econômica e *product space* (Hidalgo et al., 2007; Hausmann & Hidalgo, 2011) |

A pasta [`codigo/`](codigo/) traz um script representativo da etapa de análise e visualização em R. O pipeline completo de mineração e os demais blocos podem ser disponibilizados mediante interesse.

---

## Sobre o autor

**Pedro Henrique Fidelis** — Economista (PUC-Campinas), com MBA em Gestão Estratégica de Negócios e pós-graduação em andamento em Data Science para Negócios. Trabalho na fronteira entre economia, finanças e análise de dados.

- LinkedIn: [Pedro Henrique Fidelis](https://www.linkedin.com/in/pedrofidelis-economista/?skipRedirect=true)
- E-mail: pedrohfmb@gmail.com

---

*Estudo independente, para fins de análise e portfólio. Metodologia baseada em referências públicas de complexidade econômica; dados de fontes abertas.*
