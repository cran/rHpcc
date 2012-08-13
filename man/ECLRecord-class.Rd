\name{ECLRecord-class}
\Rdversion{1.1}
\docType{class}
\alias{ECLRecord-class}

\title{Class \code{"ECLRecord"}}
\description{
  Creates an ECL "Record Set" definition.
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

\section{Fields}{
  \describe{
    \item{\code{name}:}{Object of class \code{character} Class name. }
    \item{\code{def}:}{Object of class \code{character} ECl definition/code. }
  }
}
\section{Methods}{
  \describe{
    \item{\code{print()}:}{ Prints the ECL code. }
    \item{\code{addField(fieldName, fieldValue, seperator)}:}{ Used to add ECL definitions. }
    \item{\code{getName()}:}{ Returns class name. }
  }
}
