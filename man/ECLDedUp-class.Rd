\name{ECLDedUp-class}
\Rdversion{1.1}
\docType{class}
\alias{ECLDedUp-class}

\title{Class \code{"ECLDedUp"}}
\description{
  Creates an ECL "DEDUP" definition.
  The DEDUP function evaluates the recordset for duplicate records, as defined by the condition parameter, and returns
  a unique return set. This is similar to the DISTINCT statement in SQL. The recordset should be sorted, unless ALL is specified
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
    
    recPersonTable <- ECLRecord$new(name="personNewTableFormat")
    recPersonTable$addField(dsPerson$getName(), "code", seperator=".")
    recPersonTable$addField(dsPerson$getName(), "firstName", seperator=".")
    recPersonTable$addField(dsPerson$getName(), "lastName", seperator=".")
    
    ecl1$add(recPersonTable)
    
    tblPerson <- ECLTable$new(name="PersonNewTable", inDataset = dsPerson, 
                    format= recPersonTable)
    ecl1$add(tblPerson)
    
    PersonNewTableSorted <- ECLSort$new(name="PersonNewTableSorted", 
                              inDataset = tblPerson)
    PersonNewTableSorted$addField("lastName")
    ecl1$add(PersonNewTableSorted)
    
    mySets <- ECLDedUp$new(name="mySets", inDataset = PersonNewTableSorted)
    mySets$addField("lastName")
    ecl1$add(mySets)
    ecl1$print()
  }
}
\keyword{classes}
\section{Fields}{
  \describe{
    \item{\code{name}:}{Object of class \code{character} Class name. }
    \item{\code{inDataset}:}{Object of class \code{ECLDataset} Input record name. }
    \item{\code{def}:}{Object of class \code{character} ECl definition/code }
  }
}
\section{Methods}{
  \describe{
    \item{\code{print()}:}{ Prints the ECL code. }
    \item{\code{addField(value)}:}{ Used to add ECL definitions. }
    \item{\code{getName()}:}{ Returns class name. }
  }
}
