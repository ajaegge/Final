#testing

P <- The_Australian_Phytoplankton_Database_1844_2016_abundance_and_biovolume_1_

as.numeric(P$BIOVOLUME_UM3_L) 

#subset data
finalData<-subset(P,(is.na(data["P$BIOVOLUME_UM3_L"])))



