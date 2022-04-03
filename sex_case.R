top_filt <- filter(sample_table, project == c("TCGA-BLCA","TCGA-LGG","TCGA-COAD",
                                              "TCGA-GBM","TCGA-HNSC","TCGA-KIRC",
                                              "TCGA-LIHC","TCGA-LUAD","TCGA-LUSC",
                                              "TCGA-SKCM","TCGA-STAD","TCGA-THCA"),
                   gender == c("female","male"),
                   
                   