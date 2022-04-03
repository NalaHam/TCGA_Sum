sample_table <- data.frame(project = c("TCGA-ACC","TCGA-ACC", "TCGA-LAML","TCGA-LAML",
                                       "TCGA-BLCA","TCGA-BLCA","TCGA-LGG","TCGA-LGG",
                                       "TCGA-CHOL","TCGA-CHOL","TCGA-COAD",
                                   "TCGA-COAD","TCGA-ESCA","TCGA-ESCA","TCGA-GBM",
                                   "TCGA-GBM","TCGA-HNSC","TCGA-HNSC","TCGA-KICH",
                                   "TCGA-KICH","TCGA-KIRC","TCGA-KIRC","TCGA-KIRP",
                                   "TCGA-KIRP","TCGA-LIHC", "TCGA-LIHC", "TCGA-LUAD",
                                   "TCGA-LUAD","TCGA-LUSC","TCGA-LUSC","TCGA-DLBC",
                                   "TCGA-DLBC","TCGA-MESO","TCGA-MESO","TCGA-PAAD",
                                   "TCGA-PAAD","TCGA-PCPG","TCGA-PCPG","TCGA-READ",
                                   "TCGA-READ","TCGA-SARC","TCGA-SARC","TCGA-SKCM",
                                   "TCGA-SKCM","TCGA-STAD","TCGA-STAD","TCGA-THYM",
                                   "TCGA-THYM","TCGA-THCA","TCGA-THCA","TCGA-UVM",
                                   "TCGA-UVM"),
                        gender = c("male","female","male","female","male","female","male","female",
                                   "male","female","male","female","male","female","male","female",
                                   "male","female","male","female","male","female","male","female",
                                   "male","female","male","female","male","female","male","female",
                                   "male","female","male","female","male","female","male","female",
                                   "male","female","male","female","male","female","male","female",
                                   "male","female","male","female"),
                     number_of_samples = c(32,60,109,91,304,108,285,230,21,27,243,216,158,27,366,230,386,
                                             142,62,51,346,191,214,77,386,142,242,280,373,131,386,
                                             142,71,16,102,83,78,101,92,78,119,142,290,180,285,158,
                                             64,60,136,371,45,35)) 


total_sample <- data.frame(project = c("TCGA-ACC", "TCGA-LAML",
                                       "TCGA-BLCA","TCGA-LGG",
                                       "TCGA-CHOL","TCGA-COAD",
                                       "TCGA-ESCA","TCGA-GBM",
                                       "TCGA-HNSC","TCGA-KICH",
                                       "TCGA-KIRC","TCGA-KIRP",
                                       "TCGA-LIHC","TCGA-LUAD",
                                       "TCGA-LUSC","TCGA-DLBC",
                                       "TCGA-MESO","TCGA-PAAD",
                                       "TCGA-PCPG","TCGA-READ",
                                       "TCGA-SARC","TCGA-SKCM",
                                       "TCGA-STAD","TCGA-THYM",
                                       "TCGA-THCA",
                                       "TCGA-UVM"),
                           samples = c(92,200,412,516,51,461,185,617,
                                                 528,113,537,291,528,585,504,58,
                                                 87,185,179,172,261,470,443,124,
                                                 507,80)) 
top_sample <- total_sample[total_sample$samples >= 150, ]

num_samples <- c(92,200,412,516,51,461,185,617,
            528,113,537,291,528,585,504,58,
            87,185,179,172,261,470,443,124,
            507,80)

barplot(num_samples, besides = TRUE, horiz = FALSE, las = 1, main ="TCGA Project Samples", 
        names.arg = c("TCGA-ACC", "TCGA-LAML",
                      "TCGA-BLCA","TCGA-LGG",
                      "TCGA-CHOL","TCGA-COAD",
                      "TCGA-ESCA","TCGA-GBM",
                      "TCGA-HNSC","TCGA-KICH",
                      "TCGA-KIRC","TCGA-KIRP",
                      "TCGA-LIHC","TCGA-LUAD",
                      "TCGA-LUSC","TCGA-DLBC",
                      "TCGA-MESO","TCGA-PAAD",
                      "TCGA-PCPG","TCGA-READ",
                      "TCGA-SARC","TCGA-SKCM",
                      "TCGA-STAD","TCGA-THYM",
                      "TCGA-THCA",
                      "TCGA-UVM")) #basic barplot


total_sample <- total_sample %>% arrange(desc(samples)) #arrange rows in descending order
cancer <- substr(total_sample$project, 6, 9) #get the cancer from column 'project' name, take last 6-9 characters

total_sample$cancer <- cancer #add new column

names(total_sample) <- c('project', 'Cases', 'Cancer' )

library(ggplot2)
ggplot(total_sample, aes(x = Cancer, y = Cases, fill = Cancer))+
  geom_col(position = position_dodge())+ggtitle("TCGA Cancer Cases") #better barplot

names(top_sample) <- c('project', 'Cases', 'Cancer')
ggplot(top_sample, aes(x = Cancer, y = Cases, fill = Cancer))+
  geom_col(position = position_dodge())+ggtitle("TCGA Cancers With Over 150 Cases")

top_cancers <- total_sample[total_sample$Cases >= 400, ]

library(ggbreak)
  
ggplot(top_cancers, aes(x = Cancer, y = Cases, fill = Cancer))+
  geom_col(stat='identity')+ggtitle("Top 12 TCGA Cancers")+
  scale_color_brewer(palette="Set3")+ scale_y_break(c(100, 400), scales=10,
                                                    ticklabels = c(0,100,400,500,600))

scale_y_break(c(13, 17), scales=0.5, ticklabels=c(17, 18, 19))





