% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fiderent.R
\name{compare_folders}
\alias{compare_folders}
\title{Compare the files in two folders}
\usage{
compare_folders(path_1, path_2, ...)
}
\arguments{
\item{path_1}{path of the first folder to compare}

\item{path_2}{path of the second folder to compare}

\item{...}{additional arguments to be passed to \code{fs::dir_ls} (see details)}
}
\value{
a tibble with 4 columns:
\itemize{
\item the names of the files that are found in both folders
\item their respective MD5 hashes
\item whether the hashes (and therefore the files) are identical
}
}
\description{
Compares whether the content of the files in two directory are identical.
This can be useful when you cannot rely on the timestamps or the size of the
files to know if their contents have changed.
}
\details{
By default, to compare the content of the files, the following arguments are
passed to \code{fs::dir_ls}:
\itemize{
\item \code{recurse = TRUE}
\item \code{type = "file"}.
}

Files that are only found in one folder will have \code{NA} in the \code{identical}
column.
}
