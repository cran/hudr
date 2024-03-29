% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hudr.R
\name{get_hud_il_statedata}
\alias{get_hud_il_statedata}
\title{Get HUD Income Limit data at the State Level from HUD.}
\usage{
get_hud_il_statedata(entityid, yr, hud_key = Sys.getenv("HUD_API_KEY"))
}
\arguments{
\item{entityid}{Character string containing the 'state_code' from get_hud_fmr_liststates(...).}

\item{yr}{Character string indicating the year.}

\item{hud_key}{Character string indicating your API key from HUD. Default is Sys.getenv("HUD_API_KEY").}
}
\value{
A list of data tables containing income limit data from HUD.
}
\description{
Provides income limit data at the State level from HUD.
}
\details{
Provides income limit data at the State level from HUD.
}
\examples{
\dontrun{
library(hudr)

hud_key <- Sys.getenv("HUD_API_KEY")

state_codes <- get_hud_fmr_liststates(hud_key = hud_key)

il_state_dt <- get_hud_il_statedata(entityid = state_codes$state_code[1],
                                    yr = "2020",
                                    hud_key = hud_key)
}
}
\author{
Paul Richardson
}
