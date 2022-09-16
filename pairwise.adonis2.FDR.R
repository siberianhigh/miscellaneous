#' Returns FDR correction of P values from a set of pairwise comparisons from 'pairwise.adonis2' function of 'pairwiseAdonis' package (https://github.com/pmartinezarbizu/pairwiseAdonis)
#'
#' This function is greatly inspired by 'adonis.pair' function from EcoUtils package (https://github.com/GuillemSalazar/EcolUtils) by Guillem Salazar (https://github.com/GuillemSalazar)
#' 
#' @param ad.mod Output of 'pairwise.adonis2' function


pairwise.adonis2.FDR<-function(ad.mod,corr.method="fdr"){
  corr.method="fdr"
  ln <- length(ad.mod)
  SS<-NULL
  R2<-NULL
  F.model<-NULL
  pval<-NULL
  for (i in 2:ln){
    SS<-c(SS,ad.mod[[c(i,2)]][1])
    R2<-c(R2,ad.mod[[c(i,3)]][1])
    F.model<-c(F.model,ad.mod[[c(i,4)]][1])
    pval<-c(pval,ad.mod[[c(i,5)]][1])
  }
  pval.corr<-round(p.adjust(pval,method=corr.method), digits = 4)
  df<-data.frame(Comparison=names(ad.mod[2:ln]),SumsOfSqs=SS,F.model=F.model,R2=R2,P.value=pv,P.value.corrected=pval.corr) 
  df[,6] <- with(df, ifelse(P.value.corrected <= 0.01 & P.value.corrected > 0.001, paste0(P.value.corrected, ' **'), paste0(P.value.corrected, '') ))
  df[,6] <- with(df, ifelse(P.value.corrected <= 0.05 & P.value.corrected > 0.01, paste0(P.value.corrected, ' *'), paste0(P.value.corrected, '') ))
  df[,6] <- with(df, ifelse(P.value.corrected <= 0.001, paste0(P.value.corrected, ' ***'), paste0(P.value.corrected, '') ))
  print(ad.mod[1])
  df}