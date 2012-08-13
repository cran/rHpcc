\name{ECLJoin-class}
\Rdversion{1.1}
\docType{class}
\alias{ECLJoin-class}

\title{Class \code{"ECLJoin"}}
\description{
  Creates an ECL "JOIN" definition.
  A inner join if omitted, else one of the listed types in the JOIN Types
  JOIN Types: INNER,LEFT OUTER,RIGHT OUTER,FULL OUTER,LEFT ONLY,RIGHT ONLY,FULL ONLY
}

\section{Extends}{
 Class \code{"\linkS4class{ECLDataset}"}, directly.
}

\examples{
  \dontrun{
    transfrm <- ECLTransform$new(name="transfrm", outECLRecord=rec_revenueDef);
    transfrm$addField("SELF.orderNumber", "RIGHT.orderNumber");
    transfrm$addField("SELF.prodCode", "LEFT.productCode");
    transfrm$addField("SELF.prodName", "LEFT.productName");
    transfrm$addField("SELF.revenue", "RIGHT.priceEach * RIGHT.quantityOrdered");
    
    joinCondition <- "LEFT.productCode=RIGHT.productCode"
    ds_revenue <- ECLJoin$new(name="ds_revenue", leftRecordSet= ds_products, 
                      rightRecordSet=ds_orderDetails, joinCondition = joinCondition, 
                      joinType = "INNER", def=transfrm$print());
    ecl1$add(ds_revenue)
    output <- ECLOutput$new(name="output", def = ds_revenue$getName())
    ecl$add(output)
    ecl$print()
    xmlContent <- ecl$execute()
    data <- parseResults(xmlContent)
  }
}

\section{Fields}{
  \describe{
    \item{\code{name}:}{Object of class \code{character} Class name. }
    \item{\code{datasetType}:}{Object of class \code{ECLRecord} Input record name. }
    \item{\code{logicalFileName}:}{Object of class \code{character} A string constant containing the logical file name. }
    \item{\code{fileType}:}{Object of class \code{character} One of the following keywords, optionally followed by relevant options for that specific type of file: THOR/FLAT, CSV, XML, PIPE. }
    \item{\code{def}:}{Object of class \code{character} ECl definition/code. }
    \item{\code{leftRecordSet}:}{Object of class \code{ECLDataset}  The left set of records to process }
    \item{\code{rightRecordSet}:}{Object of class \code{ECLDataset}  The right set of records to process }
    \item{\code{joinCondition}:}{Object of class \code{character}  An expression specifying how to match records in the leftrecset and rightrecset }
    \item{\code{joinType}:}{Object of class \code{character} Optional. An inner join if omitted, else one of the listed types in the JOIN Types section below }
  }
}
\section{Methods}{
  \describe{
    \item{\code{setName(value)}:}{ Define class name. }
    \item{\code{getName()}:}{ Returns class name. }
    \item{\code{print()}:}{ Prints the ECL code. }
  }

  The following methods are inherited (from the corresponding class):
  print ("ECLDataset"), getName ("ECLDataset"), getDatasetType ("ECLDataset"), addExpression ("ECLDataset")
}
