#testing

P <- as.data.frame(The_Australian_Phytoplankton_Database_1844_2016_abundance_and_biovolume_1_)

P$BIOVOL <- P$BIOVOLUME_UM3_L

#Subset data
x <- P[complete.cases(P$BIOVOL), ]

#P$BIOVOL

#P[is.na(P$BIOVOL)] <- 0

subset(P, P$BIOVOL!="NA")

P$BIOVOL

as.numeric(P$BIOVOLUME_UM3_L)

finalData <- subset(P,!(is.na(data["BIOVOL"])))

 

#subset data
PhytoB <-subset(P, )

bar <- subset(foo, location == "there")



