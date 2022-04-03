library(TCGAbiolinks)
library(dplyr)


#ACC
clin_acc <- GDCquery_clinic("TCGA-ACC", type = "clinical", save.csv = TRUE)
sum(clin_acc$gender == "female") #60
sum(clin_acc$gender == "male") #32


#LAML
clin_laml <- GDCquery_clinic("TCGA-LAML", type = "clinical", save.csv = FALSE)
sum(clin_laml$gender == "female") #91
sum(clin_laml$gender == "male") #109

#BLCA
clin_blca <- GDCquery_clinic("TCGA-BLCA", type = "clinical", save.csv = FALSE)

sum(clin_blca$gender == "female") #108
sum(clin_blca$gender == "male") #304

#LGG
clin_lgg <- GDCquery_clinic("TCGA-LGG", type = "clinical", save.csv = FALSE)

sum(clin_lgg$gender == "female", na.rm = TRUE) #230
sum(clin_lgg$gender == "male",na.rm = TRUE) #285

#CHOL
clin_chol <- GDCquery_clinic("TCGA-CHOL", type = "clinical", save.csv = FALSE)

sum(clin_chol$gender == "female", na.rm = TRUE) #27
sum(clin_chol$gender == "male", na.rm = TRUE) #21

#LCML
clin_lcml <- GDCquery_clinic("TCGA-LCML", type = "clinical", save.csv = FALSE) #no data

sum(clin_lcml$gender == "female", na.rm = TRUE) #NA
sum(clin_lcml$gender == "male", na.rm = TRUE) #NA

#COAD
clin_coad <- GDCquery_clinic("TCGA-COAD", type = "clinical", save.csv = FALSE)

sum(clin_coad$gender == "female", na.rm = TRUE) #216
sum(clin_coad$gender == "male", na.rm = TRUE) #243

#ESCA
clin_esca <- GDCquery_clinic("TCGA-ESCA", type = "clinical", save.csv = FALSE)

sum(clin_esca$gender == "female", na.rm = TRUE) #27
sum(clin_esca$gender == "male", na.rm = TRUE) #158

#GBM
clin_gbm <- GDCquery_clinic("TCGA-GBM", type = "clinical", save.csv = FALSE)

sum(clin_gbm$gender == "female", na.rm = TRUE) #230
sum(clin_gbm$gender == "male", na.rm = TRUE) #366

#HNSC
clin_hnsc <- GDCquery_clinic("TCGA-HNSC", type = "clinical", save.csv = FALSE)

sum(clin_hnsc$gender == "female",na.rm = TRUE) #142
sum(clin_hnsc$gender == "male",na.rm = TRUE) #386

#KICH
clin_kich <- GDCquery_clinic("TCGA-KICH", type = "clinical", save.csv = FALSE)

sum(clin_kich$gender == "female",na.rm = TRUE) #51
sum(clin_kich$gender == "male",na.rm = TRUE) #62

#KIRC
clin_kirc <- GDCquery_clinic("TCGA-KIRC", type = "clinical", save.csv = FALSE)

sum(clin_kirc$gender == "female",na.rm = TRUE) #191
sum(clin_kirc$gender == "male",na.rm = TRUE) #346

#KIRP
clin_kirp <- GDCquery_clinic("TCGA-KIRP", type = "clinical", save.csv = FALSE)

sum(clin_kirp$gender == "female",na.rm = TRUE) #77
sum(clin_kirp$gender == "male",na.rm = TRUE) #214

#LIHC
clin_lihc <- GDCquery_clinic("TCGA-HNSC", type = "clinical", save.csv = FALSE)

sum(clin_lihc$gender == "female",na.rm = TRUE) #142
sum(clin_lihc$gender == "male",na.rm = TRUE) #386

#LUAD
clin_luad <- GDCquery_clinic("TCGA-LUAD", type = "clinical", save.csv = FALSE)

sum(clin_luad$gender == "female",na.rm = TRUE) #280
sum(clin_luad$gender == "male",na.rm = TRUE) #242

#LUSC
clin_lusc <- GDCquery_clinic("TCGA-LUSC", type = "clinical", save.csv = FALSE)

sum(clin_lusc$gender == "female",na.rm = TRUE) #131
sum(clin_lusc$gender == "male",na.rm = TRUE) #373

#DLBC
clin_dlbc <- GDCquery_clinic("TCGA-DLBC", type = "clinical", save.csv = FALSE)

sum(clin_hnsc$gender == "female",na.rm = TRUE) #142
sum(clin_hnsc$gender == "male",na.rm = TRUE) #386

#MESO
clin_meso <- GDCquery_clinic("TCGA-MESO", type = "clinical", save.csv = FALSE)

sum(clin_meso$gender == "female",na.rm = TRUE) #16
sum(clin_meso$gender == "male",na.rm = TRUE) #71

#PAAD
clin_paad <- GDCquery_clinic("TCGA-PAAD", type = "clinical", save.csv = FALSE)

sum(clin_paad$gender == "female",na.rm = TRUE) #83
sum(clin_paad$gender == "male",na.rm = TRUE) #102

#PCPG
clin_pcpg <- GDCquery_clinic("TCGA-PCPG", type = "clinical", save.csv = FALSE)

sum(clin_pcpg$gender == "female",na.rm = TRUE) #101
sum(clin_pcpg$gender == "male",na.rm = TRUE) #78

#READ
clin_read <- GDCquery_clinic("TCGA-READ", type = "clinical", save.csv = FALSE)

sum(clin_read$gender == "female",na.rm = TRUE) #78
sum(clin_read$gender == "male",na.rm = TRUE) #92

#SARC
clin_sarc <- GDCquery_clinic("TCGA-SARC", type = "clinical", save.csv = FALSE)

sum(clin_sarc$gender == "female",na.rm = TRUE) #142
sum(clin_sarc$gender == "male",na.rm = TRUE) #119

#SKCM
clin_skcm <- GDCquery_clinic("TCGA-SKCM", type = "clinical", save.csv = FALSE)

sum(clin_skcm$gender == "female",na.rm = TRUE) #180
sum(clin_skcm$gender == "male",na.rm = TRUE) #290

#STAD
clin_stad <- GDCquery_clinic("TCGA-STAD", type = "clinical", save.csv = FALSE)

sum(clin_stad$gender == "female",na.rm = TRUE) #158
sum(clin_stad$gender == "male",na.rm = TRUE) #285

#THYM
clin_thym <- GDCquery_clinic("TCGA-THYM", type = "clinical", save.csv = FALSE)

sum(clin_thym$gender == "female",na.rm = TRUE) #60
sum(clin_thym$gender == "male",na.rm = TRUE) #64

#THCA
clin_thca <- GDCquery_clinic("TCGA-THCA", type = "clinical", save.csv = FALSE)

sum(clin_thca$gender == "female",na.rm = TRUE) #371
sum(clin_thca$gender == "male",na.rm = TRUE) #136

#UVM
clin_uvm <- GDCquery_clinic("TCGA-UVM", type = "clinical", save.csv = FALSE)

sum(clin_uvm$gender == "female",na.rm = TRUE) #35
sum(clin_uvm$gender == "male",na.rm = TRUE) #45
