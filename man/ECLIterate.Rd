\name{ECLIterate}
\alias{ECLIterate}
\docType{data}
\title{
  Creates an ECL "ITERATE" definition.
}
\description{
  Creates an ECL "ITERATE" definition.
  The ITERATE function processes through all records in the recordset one pair of records at a time, performing the
  transform function on each pair in turn.
}

\examples{
  \dontrun{
    ecl1 <- ECL$new(hostName="192.168.217.128", port="8008")
    resType <- ECLRecord$new(name="rec_resType")
    resType$addField("INTEGER1", "Val")
    resType$addField("INTEGER1", "Rtot")
    ecl1$add(resType)
    
    dsRecords <- ECLDataset$new(name="ds_records", datasetType = resType, 
                    logicalFileName ="~ds::iterate", fileType="CSV")
    ecl1$add(dsRecords)
    
    iterate <- ECLIterate$new(name="ECLIterate", inDataset=dsRecords, 
                  outECLRecord=resType);
    iterate$addField("SELF.Rtot", "LEFT.Rtot+RIGHT.Val");
    iterate$addField("SELF", "RIGHT");
    ecl1$add(iterate)
    
    outputIterate <- ECLOutput$new(name="outputIterate", def = iterate$getName())
    ecl1$add(outputIterate)
    ecl1$print()
    
    xmlContent <- ecl1$execute()
    parseResults(xmlContent)
  }
}