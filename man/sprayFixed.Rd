\name{sprayFixed}
\alias{sprayFixed}
\title{
  Used to upload the fixed-format file from the landing zone to the cluster.
}
\description{
  used to upload the fixed-format file from the landing zone and distributes it across the nodes of the destination supercomputer. 
}
\usage{
sprayFixed(ip, filePath, recordlength, clusterName = "mythor", logicalFileName)
}

\arguments{
  \item{ip}{
  HPCC server hostname
}
  \item{filePath}{
  A null-terminated string containing the path and name of the file.
}
  \item{recordlength}{
  Size of the records in the file.
}
  \item{clusterName}{
   A null-terminated string containing the name of the specific supercomputer within the target cluster.
}
  \item{logicalFileName}{
   Logical name of the file.
}
}


\examples{
  \dontrun{
    query <- sprayFixed(ip="127.0.0.1", filePath="/var/lib/HPCCSystems/mydropzone/SampleFile.txt", 
                recordlength=301, clusterName="mythor", logicalFileName="~ds::myFile")
  }
}
