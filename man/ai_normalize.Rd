% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ai.R
\name{ai_normalize}
\alias{ai_normalize}
\title{Normalize the data per year and indicator}
\usage{
ai_normalize(data)
}
\arguments{
\item{data}{A dataframe generated by \code(ai())}
}
\value{
A data frame with the data and the new column value_norm
}
\description{
Normalization process:
}
\details{
1. Compute the mean (M) and the standar deviation (S) of the indicator value per year and indicator
2. Compute the indicator value normalize with the following formula
   ind.value_norm=(value-M)/S * Multiplier
   
   where the Multiplier is 1 if the indicator is positive and -1 if the indicator is negativa. 
   A positive indicator means that higher values of the indicator are prefered (GDP per capita) 
   and negative indicator (unemployment rate) means that lower values are prefered.
   The multiplier is computed based on keywords found in the indicator. The keywords can be found in \code(agregadorindicadores::keywords)
}
\note{
the metadata of the indicators should be in english
}
\examples{

#Normalize all indicators of Numbers for Development for year 2014
ind<- ind_search(pattern = "Numbers for Development", c("api"))
df<-ai(indicator = ind$src_id_ind, startdate=2014, enddate=2014)
ai_normalize()
}
