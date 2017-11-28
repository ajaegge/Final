#testing

P <- as.data.frame(The_Australian_Phytoplankton_Database_1844_2016_abundance_and_biovolume_1_)

P$BIOVOL <- P$BIOVOLUME_UM3_L

P$BIOVOL

#Subset data for missing data
PhytoB <- P[complete.cases(P$BIOVOL), ]
as.numeric(PhytoB$BIOVOL)

#subset years
PhytoYears <- subset(PhytoB, PhytoB$SAMPLE_YEAR > 2011 & PhytoB$SAMPLE_YEAR < 2015)



#Calculate total biovolume per sampling site
PSum <- aggregate(PhytoB$BIOVOL, by = list(PhytoB$LATITUDE, PhytoB$LONGITUDE), FUN = mean)


#write to CSV
write.csv(PSum, file = "PhytoSumTEST.csv")





