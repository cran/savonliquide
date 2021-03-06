% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_description.R
\name{describe_using}
\alias{describe_using}
\title{Describe an HTML element by another one}
\usage{
describe_using(element, descID)
}
\arguments{
\item{element}{the HTML element to describe}

\item{descID}{one or a vector of many HTML elements' <IDs>
that will be used to describe the 'element' parameter}
}
\value{
an HTML element described by another HTML element
}
\description{
Describe an HTML element by another one
}
\examples{
if (interactive()) {
  ui <- fluidPage(
    h2("Using a screen reader
        hit Tab and Shift + Tab to
        navigate between the buttons
        and stop at button 2 to see the difference"),

    div(
      id = "paragraph",
      p("The following paragraph tag will be used as a descriptor")
    ),

    actionButton(
      inputId = "inp1",
      label = "button 1"
    ),
    actionButton(
      inputId = "inp2",
      label = "button 2"
    ) \%>\%
      describe_using(
        descID = "paragraph"
      )
  )

  server <- function(input, output, session) {}

  shinyApp(ui, server)
}
}
