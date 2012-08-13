\name{eclDirectCall}
\alias{eclDirectCall}

\title{
  Executes the ECL code on the cluster specified and returns the XML response
}
\description{
  Executes the ECL code on the cluster specified and returns the XML response.
}
\usage{
  eclDirectCall(hostName, port = "8008", clusterName = "thor", eclCode)
}

\arguments{
  \item{hostName}{
  HPCC server hostname.
}
  \item{port}{
  HPCC server port.
}
  \item{clusterName}{
  Cluster name on which the ECL code will execute.
}
  \item{eclCode}{
  ECL code you want to execute
}
}

\examples{
  \dontrun{
    eclCode <- "recCountyFipsCode := RECORD
        String CountyNames;
        UNSIGNED3 CountyFipsCode;
        UNSIGNED2 StateFipsCode;
      END;
  
      dsCountyFips := DATASET('~seer::countyfipscode', recCountyFipsCode, CSV);
      OUTPUT(COUNT(dsCountyFips));"
      
      eclDirectCall(hostName="127.0.0.1", eclCode=eclCode)
  }
}