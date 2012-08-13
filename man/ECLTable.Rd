\name{ECLTable}
\alias{ECLTable}
\docType{data}
\title{
  Creates an ECL "TABLE" definition.
}
\description{
 Creates an ECL "TABLE" definition.
 The TABLE function is similar to OUTPUT, but instead of writing records to a file, it outputs those records in a new
 table (a new dataset in the supercomputer), in memory. The new table is temporary and exists only while the specific
 query that invoked it is running.
}

\examples{
  \dontrun{
      ecl1 <- ECL$new(hostName="127.0.0.1")
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
      
      recPersonTable <- ECLRecord$new(name="personNewTableFormat")
      recPersonTable$addField(dsPerson$getName(), "code", seperator=".")
      recPersonTable$addField(dsPerson$getName(), "firstName", seperator=".")
      recPersonTable$addField(dsPerson$getName(), "lastName", seperator=".")
      
      ecl1$add(recPersonTable)
      
      tblPerson <- ECLTable$new(name="PersonNewTable", inDataset = dsPerson, 
                      format= recPersonTable)
      ecl1$add(tblPerson)
   }
}
