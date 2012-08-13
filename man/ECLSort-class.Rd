\name{ECLSort-class}
\Rdversion{1.1}
\docType{class}
\alias{ECLSort-class}

\title{Class \code{"ECLSort"}}
\description{
  Creates an ECL "SORT" definition.
  The SORT function sorts the recordset according to the values specified.
}
\section{Extends}{
  Class \code{"\linkS4class{ECLDataset}"}, directly.
}

\examples{
  \dontrun{
    ECLSort$new(name, inDataset)
  }
}

\section{Fields}{
  \describe{
    \item{\code{name}:}{Object of class \code{character} Class name. }
    \item{\code{datasetType}:}{Object of class \code{ECLRecord} Input record name. }
    \item{\code{logicalFileName}:}{Object of class \code{character} A string constant containing the logical file name. }
    \item{\code{fileType}:}{Object of class \code{character} One of the following keywords, optionally followed by relevant options for that specific type of file: THOR/FLAT, CSV, XML, PIPE. }
    \item{\code{def}:}{Object of class \code{character} ECl definition/code. }
    \item{\code{inDataset}:}{Object of class \code{ECLDataset} Input record name. }
  }
}
\section{Methods}{
  \describe{
    \item{\code{addField(value)}:}{ Used to add ECL definitions.}
    \item{\code{getName()}:}{ Returns class name. }
    \item{\code{print()}:}{ Prints the ECL code. }
  }

The following methods are inherited (from the corresponding class):
print ("ECLDataset"), getName ("ECLDataset"), getDatasetType ("ECLDataset"), addExpression ("ECLDataset")
}
