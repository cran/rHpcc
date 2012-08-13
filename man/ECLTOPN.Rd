\name{ECLTOPN}
\alias{ECLTOPN}
\docType{data}
\title{
  Returns the first count number of records in the sorts order from the recordset.
}
\description{
  Returns the first count number of records in the sorts order from the recordset.
}

\examples{
  \dontrun{
    topn <- ECLTOPN$new(name="T1", inDataset = dsRecords, count="5")
    topn$addField("-Rtot")
    ecl1$add(iterate)
  }
}
