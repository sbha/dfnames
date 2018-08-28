\name{df_names}
\alias{df_names}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
df_names(df_name, regex_pattern, comma)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df_name}{
%%     ~~Describe \code{df_name} here~~
}
  \item{regex_pattern}{
%%     ~~Describe \code{regex_pattern} here~~
}
  \item{comma}{
%%     ~~Describe \code{comma} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (df_name, regex_pattern, comma) 
{
    if (missing(comma)) {
        sepc <- "\n"
    }
    else {
        if (comma == TRUE) 
            sepc <- ",\n"
        if (comma == FALSE) 
            sepc <- "\n"
    }
    if (exists("df_name") && is.data.frame(get("df_name"))) {
        if (missing(regex_pattern)) {
            cat(names(df_name), sep = sepc)
        }
        else {
            names(df_name) <- names(df_name)[grepl(regex_pattern, 
                names(df_name), ignore.case = TRUE)]
            df_names_out <- names(df_name)[!is.na(names(df_name))]
            cat(df_names_out, sep = sepc)
        }
    }
    else {
        print("must enter the name of a valid data frame")
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
