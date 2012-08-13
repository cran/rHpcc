\name{parseResults}
\alias{parseResults}
\title{
  Parses the XML returned from eclDirectCall().
}
\description{
  Parses the XML returned from eclDirectCall() and allows you to download the result in either CSV or XML format
}
\usage{
  parseResults(xmlResult, downloadPath, format)
}

\arguments{
  \item{xmlResult}{
    XML Output returned from eclDirectCall() 
}
  \item{downloadPath}{
    The path where you want to file. Do not specify the file name.
}
  \item{format}{
    The format of the file to download. The file can be downloaded only in CSV and XML format.
    If no format is specified the file is downloaded in CSV format.
}
}

\examples{
  \dontrun{
    xmlContent <- eclDirectCall(hostName = "127.0.0.1", eclCode=ecl)
    data <- parseResults(xmlContent, downloadPath="C:/Temp", format="xml")
  }
}
