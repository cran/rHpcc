\name{ECLTable-class}
\Rdversion{1.1}
\docType{class}
\alias{ECLTable-class}

\title{Class \code{"ECLTable"}}
\description{
  Creates an ECL "TABLE" definition.
 The TABLE function is similar to OUTPUT, but instead of writing records to a file, it outputs those records in a new
 table (a new dataset in the supercomputer), in memory. The new table is temporary and exists only while the specific
 query that invoked it is running.
}
\section{Extends}{
  Class \code{"\linkS4class{ECLDataset}"}, directly.
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
      
      tblPerson <- ECLTable$new(name="PersonNewTable", inDataset = dsPerson, format= recPersonTable)
      ecl1$add(tblPerson)
   }
}

\section{Fields}{
  \describe{
    \item{\code{name}:}{Object of class \code{character} Class name. }
    \item{\code{datasetType}:}{Object of class \code{ECLRecord} Input record name. }
    \item{\code{logicalFileName}:}{Object of class \code{character} A string constant containing the logical file name. }
    \item{\code{fileType}:}{Object of class \code{character} One of the following keywords, optionally followed by relevant options for that specific type of file: THOR/FLAT, CSV, XML, PIPE. }
    \item{\code{def}:}{Object of class \code{character} ECl definition/code. }
    \item{\code{inDataset}:}{Object of class \code{ECLDataset} The set of records to process. This may be the name of a dataset or a record set derived from some filter condition, or any expression that results in a derived record set. }
    \item{\code{format}:}{Object of class \code{ECLRecord} An output RECORD structure definition that defines the type, name, and source of the data for each field }
  }
}
\section{Methods}{
  \describe{
    \item{\code{getName()}:}{ Returns class name. }
    \item{\code{print()}:}{ Prints the ECL code. }
  }

The following methods are inherited (from the corresponding class):
print ("ECLDataset"), getName ("ECLDataset"), getDatasetType ("ECLDataset"), addExpression ("ECLDataset")
}
