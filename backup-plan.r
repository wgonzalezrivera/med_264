
library(data.table)
df_albumin <- fread("albumin_data.txt")

df_albumin

df_albumin_columns<- data.frame(df_albumin$)

head(df_albumin_columns)

df_albumin_none_NA <- na.omit(df_albumin_columns)

colnames(df_albumin_none_NA) <- c("FID","ALBUMIN")

df_albumin_complete <- data.frame(df_albumin_none_NA$FID, df_albumin_none_NA$FID, df_albumin_none_NA$ALBUMIN)

colnames(df_albumin_complete) <- c("FID", "IID", "ALBUMIN")

fwrite(df_albumin_complete, "~/work/gymrek-lab/correct_traits/albumin_corrected_WGR.txt", sep = "\t")

df_fam <- fread("df_fam.txt")

df_fam_albumin <- merge(df_albumin_complete,df_fam, by = c("FID", "IID"))

fwrite(df_fam_albumin, "~/work/gymrek-lab/AFR/afr_train_cohort/albumin_train_cohort.txt", sep = "\t")
