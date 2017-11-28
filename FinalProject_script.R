#AustralianPhytoplanktonDatabase

P <- as.data.frame(The_Australian_Phytoplankton_Database_1844_2016_abundance_and_biovolume_1_)

P$BIOVOL <- P$BIOVOLUME_UM3_L

P$BIOVOL

#Subset data for missing data
PhytoB <- P[complete.cases(P$BIOVOL), ]
as.numeric(PhytoB$BIOVOL)

#subset years
PhytoYears <- subset(PhytoB, PhytoB$SAMPLE_YEAR > 2011 & PhytoB$SAMPLE_YEAR < 2015)

#normalize data
PhytoYears$NormalizedBiovol <- log(PhytoYears$BIOVOL)

#Calculate mean biovolume per sampling site
PMean <- aggregate(PhytoYears$BIOVOL, by = list(PhytoYears$LATITUDE, PhytoYears$LONGITUDE), FUN = mean)

#write to CSV
write.csv(PhytoYears, file = "PhytoYears.csv")
write.csv(PMean, file = "PhytoMean.csv")


#Coral Bleaching Events

C <- CoralBleaching

#subset location
CB <- subset(C, C$COUNTRY == "Australia")

#write to csv
write.csv(CB, file = "BleachingEventsAus.csv")
