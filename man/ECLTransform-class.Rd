\name{ECLTransform-class}
\Rdversion{1.1}
\docType{class}
\alias{ECLTransform-class}

\title{Class \code{"ECLTransform"}}
\description{
  Creates an ECL "TRANSFORM" definition. A TRANSFORM defines the specific operations that must occur on a record-by-record basis.
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
    data
  }
}

\section{Fields}{
  \describe{
    \item{\code{name}:}{Object of class \code{character} Class name. }
    \item{\code{outECLRecord}:}{Object of class \code{ECLRecord} Output record name. }
    \item{\code{def}:}{Object of class \code{character} ECl definition/code. }
  }
}
\section{Methods}{
  \describe{
    \item{\code{print()}:}{ Prints the ECL code. }
    \item{\code{addField(id, value)}:}{ Used to add ECL definitions. }
    \item{\code{getName()}:}{ Returns class name. }
  }
}
