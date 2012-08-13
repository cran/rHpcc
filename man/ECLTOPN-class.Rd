\name{ECLTOPN-class}
\Rdversion{1.1}
\docType{class}
\alias{ECLTOPN-class}

\title{Class \code{"ECLTOPN"}}
\description{
  Returns the first count number of records in the sorts order from the recordset.
}
\section{Extends}{
  Class \code{"\linkS4class{ECLDataset}"}, directly.
}

\examples{
  \dontrun{
    topn <- ECLTOPN$new(name="T1", inDataset = dsRecords, count="5")
    topn$addField("-Rtot")
    ecl1$add(iterate)
  }
}

\section{Fields}{
  \describe{
    \item{\code{name}:}{Object of class \code{character} Class name. }
    \item{\code{datasetType}:}{Object of class \code{ECLRecord} Input record name. }
    \item{\code{logicalFileName}:}{Object of class \code{character} A string constant containing the logical file name. }
    \item{\code{fileType}:}{Object of class \code{character}  One of the following keywords, optionally followed by relevant options for that specific type of file: THOR/FLAT, CSV, XML, PIPE.}
    \item{\code{def}:}{Object of class \code{character} ECl definition/code. }
    \item{\code{inDataset}:}{Object of class \code{ECLDataset} The set of records to process. }
    \item{\code{count}:}{Object of class \code{character} Expression defining the number of records to return. }
  }
}
\section{Methods}{
  \describe{
    \item{\code{addField(value)}:}{ Used to add ECL definitions. }
    \item{\code{getName()}:}{ Returns class name. }
    \item{\code{print()}:}{ Prints the ECL code. }
  }

The following methods are inherited (from the corresponding class):
print ("ECLDataset"), getName ("ECLDataset"), getDatasetType ("ECLDataset"), addExpression ("ECLDataset")
}
