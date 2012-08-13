\name{sprayVariable}
\alias{sprayVariable}
\title{
  Used to upload the variable length file from the landing zone to the cluster.
}
\description{
  used to upload the variable length file from the landing zone and distributes it across the nodes of the destination supercomputer.
}
\usage{
sprayVariable(ip, filePath, clusterName = "mythor", logicalFileName)
}

\arguments{
  \item{ip}{
  HPCC server hostname
}
  \item{filePath}{
  A null-terminated string containing the path and name of the file.
}
  \item{clusterName}{
  A null-terminated string containing the name of the specific supercomputer within the target cluster.
}
  \item{logicalFileName}{
  Logical name of the file.
}
}

\examples{
  query <- sprayVariable(ip="127.0.0.1", filePath="/var/lib/HPCCSystems/mydropzone/SampleFile.csv", 
              clusterName="mythor", logicalFileName="~ds::myFile")
}
