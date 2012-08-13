\name{ECLDistribute}
\alias{ECLDistribute}
\docType{data}
\title{
  Creates an ECL "DISTRIBUTE" definition.
}
\description{
  Creates an ECL "DISTRIBUTE" definition.
  The DISTRIBUTE function re-distributes records from the recordset across all the nodes of the cluster
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
      
    condition <- "SKEW(0.1)"
    distribute <- ECLDistribute$new(inECLRecord=recPerson, condition=condition)
    ecl1$add(distribute)
    ecl1$print()
   }
}
