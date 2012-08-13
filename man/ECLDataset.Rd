\name{ECLDataset}
\alias{ECLDataset}
\docType{data}
\title{
   Creates a DATASET definition. The DATASET declaration defines a file of records, on disk or in memory.
}
\description{
   Creates a DATASET definition. The DATASET declaration defines a file of records, on disk or in memory.
}

\examples{
  \dontrun{
    ecl1 <- ECL$new(hostName="127.0.0.1")
    recPerson <- ECLRecord$new(name="Person")
    recPerson$addField("STRING", "code")
    recPerson$addField("STRING", "firstName")
    recPerson$addField("STRING", "lastName")
    recPerson$addField("STRING", "address")
    recPerson$addField("STRING", "stateCode")
    recPerson$addField("STRING", "city")
    recPerson$addField("STRING", "zip")
    ecl1$add(recPerson)
    dsPerson <- ECLDataset$new(name="ds_person", datasetType = recPerson, 
    logicalFileName ="~ds::person", fileType="CSV")
    ecl1$add(dsPerson)
  }
}
