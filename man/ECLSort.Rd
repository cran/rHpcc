\name{ECLSort}
\alias{ECLSort}
\docType{data}
\title{
  Creates an ECL "SORT" definition.
}
\description{
  Creates an ECL "SORT" definition.
  The SORT function sorts the recordset according to the values specified.
}

\examples{
  \dontrun{
    sort <- ECLSort$new(name="sortedTable", inDataset = tblCatalog)
    sort$addField("ProdLine")
    sort$addField("ProdName")
    ecl1$add(sort)
  }
}
