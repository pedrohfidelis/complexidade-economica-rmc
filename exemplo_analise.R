# =============================================================================
# Complexidade Econômica da RMC — Exemplo de análise e visualização (em R)
#
# Este script é uma AMOSTRA representativa da etapa de análise do projeto.
# Mostra como os dados de exportação (já minerados e estruturados em Python)
# são tratados e transformados em um painel-resumo da base industrial da RMC.
#
# Autor: Pedro Henrique Fidelis
# Fontes: ComexStat (MDIC) + BACI (CEPII)
# =============================================================================

library(tidyverse)
library(patchwork)
library(scales)

# Paleta visual do projeto
azul  <- "#2980b9"
verde <- "#27ae60"
cinza <- "#7f8c8d"

# -----------------------------------------------------------------------------
# Entrada esperada (após mineração/estruturação):
#   evol         : exportações anuais da RMC (colunas: CO_ANO, exp_usd)
#   hhi          : concentração da pauta por período (colunas: periodo, HHI)
#   top_setores  : participação por setor SH2 (colunas: SH2, NO_SH2, participacao)
# -----------------------------------------------------------------------------

# --- Painel A: evolução das exportações (área + linha) ---
pA <- ggplot(evol, aes(CO_ANO, exp_usd / 1e9)) +
  geom_area(alpha = 0.25, fill = azul) +
  geom_line(linewidth = 1.1, color = azul) +
  geom_point(size = 1.8, color = azul) +
  scale_y_continuous(labels = label_number(suffix = " bi")) +
  labs(title = "A. Exportações totais", x = NULL, y = "US$ FOB") +
  theme_minimal(base_size = 11)

# --- Painel B: concentração da pauta (HHI) — medida de diversificação ---
pB <- ggplot(hhi, aes(factor(periodo, levels = periodo), HHI, group = 1)) +
  geom_line(linewidth = 1.1, color = verde) +
  geom_point(size = 3, color = verde) +
  geom_text(aes(label = sprintf("%.3f", HHI)), vjust = -1, size = 3, color = verde) +
  expand_limits(y = c(0, max(hhi$HHI) * 1.25)) +
  labs(title = "B. Concentração da pauta (HHI)",
       subtitle = "menor = mais diversificada", x = NULL, y = "HHI") +
  theme_minimal(base_size = 11)

# --- Painel C: principais setores no acumulado do período ---
pC <- top_setores %>%
  slice_head(n = 8) %>%
  ggplot(aes(reorder(NO_SH2, participacao), participacao)) +
  geom_col(fill = azul, width = 0.7) +
  geom_text(aes(label = percent(participacao, accuracy = 0.1)),
            hjust = -0.1, size = 3) +
  coord_flip() +
  scale_y_continuous(labels = percent_format(),
                     expand = expansion(mult = c(0, 0.15))) +
  labs(title = "C. Principais setores (acumulado)", x = NULL, y = NULL) +
  theme_minimal(base_size = 11)

# --- Composição final do painel ---
painel <- (pA | pB) / pC +
  plot_annotation(
    title = "A indústria exportadora da Região Metropolitana de Campinas",
    subtitle = "25 anos de crescimento e diversificação produtiva",
    caption = "Fonte: ComexStat (MDIC). Elaboração própria.",
    theme = theme(plot.title = element_text(face = "bold", size = 15),
                  plot.subtitle = element_text(color = cinza, size = 11)))

# Exportação em alta resolução
ggsave("bloco1_painel_RMC.png", painel,
       width = 17, height = 15, dpi = 300, bg = "white")
