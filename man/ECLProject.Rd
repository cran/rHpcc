\name{ECLProject}
\alias{ECLProject}
\docType{data}
\title{
  Creates an ECL "PROJECT" definition.
}
\description{
  Creates an ECL "PROJECT" definition. The PROJECT function processes through all records in the recordset performing the transform function on each record in turn.
}

\examples{
  \dontrun{
    ecl <- ECL$new(hostName="127.0.0.1")
    ecl$addImport("IMPORT STD;")
    person <- ECLRecord$new(name="Person")
    person$addField("STRING", "code")
    person$addField("STRING", "firstName")
    person$addField("STRING", "lastName")
    ecl$add(person)
    
    personOut <- ECLRecord$new(name="PersonOut")
    personOut$addField("STRING", "code")
    personOut$addField("STRING", "firstName")
    personOut$addField("STRING", "lastName")
    ecl$add(personOut)
    
    personDS <- ECLDataset$new(name="personDS", datasetType = person, 
                    logicalFileName ="~ds::person", fileType="CSV")
    ecl$add(personDS)
    
    personProject <- ECLProject$new(name="PersonProject", inDataset=personDS, 
                          outECLRecord=personOut);
    personProject$addField("SELF.firstName", "Std.Str.ToUpperCase(LEFT.firstName)");
    personProject$addField("SELF", "LEFT");
    ecl$add(personProject)
    outputProject <- ECLOutput$new(name="outputProject", def = personProject$getName())
    ecl$add(outputProject)
    ecl$print()
    xmlContent <- ecl$execute()
    data <- parseResults(xmlContent)
  }
}