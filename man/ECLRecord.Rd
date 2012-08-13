\name{ECLRecord}
\alias{ECLRecord}
\docType{data}
\title{
  Creates an ECL "Record Set" definition.
}
\description{
  Record layouts are Attribute definitions whose expression is a RECORD structure terminated by the END keyword.
The attr name creates a user-defined value type that can be used in built-in functions and TRANSFORM function
definitions. The delimiter between field definitions in a RECORD structure can be either the semi-colon (;) or a comma
(,).
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
