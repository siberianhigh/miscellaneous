# Miscellaneous

## R functions

**`pairwise.adonis2.FDR()`** function returns corrected P values for multiple pairwise comparisons produced by 'pairwise.adonis2' function of 'pairwiseAdonis' package (https://github.com/pmartinezarbizu/pairwiseAdonis). Default correction method is FDR, but other methods available, see [documentation for p.adjust](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/p.adjust)

This function is greatly inspired by 'adonis.pair' function from EcoUtils package (https://github.com/GuillemSalazar/EcolUtils).

**Output example**

```
> adonis.pair.FDR(pairwise.adonis2.results, "fdr")

`$parent_call`

[1] "BrayCurtis_dist ~ Group, strata = Individual, permutations 999"

       Comparison  SumsOfSqs   F.model          R2 P.value P.value.corrected
1        D1_vs_D2 1.27924275 4.3383764 0.097846985   0.001         0.0019 **
2        D1_vs_D3 1.62942290 5.7236725 0.127978588   0.001        0.0002 ***
3        D1_vs_D4 0.19908155 0.6120613 0.015070923   0.051            0.0621
4        D2_vs_D3 0.16499202 0.4860296 0.012004872   0.044            0.04 *
5        D2_vs_D4 0.03410787 0.1027535 0.002562257   0.930              0.93
6        D3_vs_D4 0.03955945 0.1160925 0.002893914   0.918              0.93

```
