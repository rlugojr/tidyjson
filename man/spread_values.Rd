% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/spread_values.r
\name{spread_values}
\alias{spread_values}
\title{Create new columns with JSON values}
\usage{
spread_values(x, ...)
}
\arguments{
\item{x}{tbl_json object}

\item{...}{column=value list where 'column' will be the column name created
and 'value' must be a call to jstring(), jnumber() or jlogical() specifying
the path to get the value (and the type implicit in the function name)}
}
\description{
The spread_values() function lets you dive into (potentially nested) JSON
objects and extract specific values. spread_values() takes jstring(),
jnumber() or jlogical() named function calls as arguments in order to specify
the type of the data that should be captured at each desired key location.
These values can be of varying types at varying depths.
}
\examples{
library(magrittr)  # for \%>\%
'{"name": {"first": "bob", "last": "jones"}, "age": 32}' \%>\%
  spread_values(
    first.name = jstring("name", "first"),
    age = jnumber("age")
  )
}

