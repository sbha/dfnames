\name{df_names}
\alias{df_names}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Print names in an easy to copy format
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
#print data frame names in console
df_names(iris)

#print data frame names in console with commas
df_names(iris, comma = TRUE)

#print data frame names in console that matcha regular expression pattern
df_names(iris, regex = '^S')
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
