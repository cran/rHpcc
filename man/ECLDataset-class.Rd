\name{ECLDataset-class}
\Rdversion{1.1}
\docType{class}
\alias{ECLDataset-class}

\title{Class \code{"ECLDataset"}}
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
\keyword{classes}
\section{Fields}{
  \describe{
    \item{\code{name}:}{Object of class \code{character} Class name. }
    \item{\code{datasetType}:}{Object of class \code{ECLRecord} Input record name. }
    \item{\code{logicalFileName}:}{Object of class \code{character} A string constant containing the logical file name. }
    \item{\code{fileType}:}{Object of class \code{character}  One of the following keywords, optionally followed by relevant options for that specific type of file: THOR/FLAT, CSV, XML, PIPE.}
    \item{\code{def}:}{Object of class \code{character} ECl definition/code. }
  }
}
\section{Methods}{
  \describe{
    \item{\code{print()}:}{ Prints the ECL code. }
    \item{\code{addExpression(fieldName)}:}{ Used to add ECL definitions. }
    \item{\code{getDatasetType()}:}{ Returns input dataset name. }
    \item{\code{getName()}:}{ Returns class name. }
  }
}
