\name{ECL-class}
\Rdversion{1.1}
\docType{class}
\alias{ECL-class}

\title{Class \code{"ECL"}}
\description{
  The base class that generates the ECL(Enterprise Control Language) code and executes it on the HPCC cluster.
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

\keyword{classes}
\section{Fields}{
  \describe{
    \item{\code{hostName}:}{Object of class \code{character} HPCC server hostname }
    \item{\code{port}:}{Object of class \code{character} HPCC server port }
    \item{\code{eclCode}:}{Object of class \code{character} ECL code you want to execute }
    \item{\code{clusterName}:}{Object of class \code{character} Cluster name on which the ECL code will execute }
  }
}
\section{Methods}{
  \describe{
    \item{\code{execute()}:}{ This method internally calls the \code{eclDirectCall} method which executes the ECL code.}
    \item{\code{print()}:}{ Prints the ECL code. }
    \item{\code{addImport(value)}:}{ Used to add Import definitions. }
    \item{\code{add(obj)}:}{ Used to add definitions to the existing code. }
  }
}
