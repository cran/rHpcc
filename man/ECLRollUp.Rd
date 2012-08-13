\name{ECLRollUp}
\alias{ECLRollUp}
\docType{data}
\title{
  Creates an ECL "ROLLUP" definition.
}
\description{
  Creates an ECL "ROLLUP" definition.
  The ROLLUP function is similar to the DEDUP function with the addition of the call to the transform function to
  process each duplicate record pair. This allows you to retrieve valuable information from the "duplicate" record before it's thrown away.
}

\examples{
  \dontrun{
    ecl1 <- ECL$new(hostName="127.0.0.1", port="8008")
    recPerson <- ECLRecord$new(name="rec_person")
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
    
    recPersonContact <- ECLRecord$new(name="rec_myRec")
    recPersonContact$addField(dsPerson$getName(), "firstName", seperator=".")
    recPersonContact$addField(dsPerson$getName(), "lastName", seperator=".")
    
    ecl1$add(recPersonContact)
    
    tblPerson <- ECLTable$new(name="LnameTable ", inDataset = dsPerson, 
                    format= recPersonContact)
    ecl1$add(tblPerson)
    
    sort <- ECLSort$new(name="sortedTable", inDataset = tblPerson)
    sort$addField("firstName")
    ecl1$add(sort)
    
    condition <- "LEFT.firstName = RIGHT.firstName"
    rollUp <- ECLRollUp$new(name="TransformPersons ", inDataset=sort, 
                outECLRecord=recPersonContact, condition = condition);
    rollUp$addField("SELF", "LEFT");
    ecl1$add(rollUp)
    ecl1$print()
  }
}
