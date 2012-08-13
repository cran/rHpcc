\name{ECLOutput-class}
\Rdversion{1.1}
\docType{class}
\alias{ECLOutput-class}

\title{Class \code{"ECLOutput"}}
\description{
  Creates a ECL action "Output". The OUTPUT  action produces a recordset result from the supercomputer, based on which form and options you choose. If no file to write to is specified, the result is stored in the workunit and returned to the calling program as a data stream.
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
    outputPerson <- ECLOutput$new(name="outputPerson", def = dsPerson$getName())
    ecl1$add(outputPerson)
    xmlContent <- ecl1$execute()
    parseResults(xmlContent)
  }
}
\keyword{classes}
\section{Fields}{
  \describe{
    \item{\code{name}:}{Object of class \code{character} Returns class name. }
    \item{\code{def}:}{Object of class \code{character} ECl definition/code. }
  }
}
\section{Methods}{
  \describe{
    \item{\code{print()}:}{ Prints the ECL code. }
    \item{\code{getName()}:}{ Returns class name. }
  }
}
