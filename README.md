# Miscellaneous

## R functions

**`pairwise.adonis2.FDR()`** function returns FDR corrected P values from a set of pairwise comparisons produced by 'pairwise.adonis2' function of 'pairwiseAdonis' package (https://github.com/pmartinezarbizu/pairwiseAdonis).

This function is greatly inspired by 'adonis.pair' function from EcoUtils package (https://github.com/GuillemSalazar/EcolUtils).

**Output example**

```
> adonis.pair.FDR(pairwise.adonis2.results)

`$parent_call`

[1] "BrayCurtis_dist ~ Group, strata = Individual, permutations 999"

       Comparison  SumsOfSqs   F.model          R2 P.value P.value.corrected
1        D5_vs_D6 1.27924275 4.3383764 0.097846985   0.001         0.0019 **
2  D5_vs_Cestodes 1.62942290 5.7236725 0.127978588   0.001        0.0002 ***
3        D5_vs_D1 0.19908155 0.6120613 0.015070923   0.051            0.0621
4        D5_vs_D2 0.16499202 0.4860296 0.012004872   0.044            0.04 *
5        D5_vs_D3 0.03410787 0.1027535 0.002562257   0.930              0.93
6        D5_vs_D4 0.03955945 0.1160925 0.002893914   0.918              0.93
7        D5_vs_D0 0.72161531 2.0974914 0.074650486   0.001         0.0019 **
8  D6_vs_Cestodes 2.34239357 9.9905804 0.203928598   0.001         0.0019 **
```
