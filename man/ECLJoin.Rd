\name{ECLJoin}
\alias{ECLJoin}
\docType{data}
\title{
  Creates an ECL "JOIN" definition.
}
\description{
  Creates an ECL "JOIN" definition.
  A inner join if omitted, else one of the listed types in the JOIN Types
  JOIN Types: INNER,LEFT OUTER,RIGHT OUTER,FULL OUTER,LEFT ONLY,RIGHT ONLY,FULL ONLY
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

