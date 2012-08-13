\name{ECL}
\alias{ECL}
\docType{data}
\title{
  The base class that generates the ECL(Enterprise Control Language) code.
}
\description{
  The base class that generates the ECL(Enterprise Control Language) code and executes it on the HPCC cluster.
  This class is used to add ECL code/import definitions.
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
  }
}
