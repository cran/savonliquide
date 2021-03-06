% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_description.R
\name{add_description}
\alias{add_description}
\title{Add a description to an HTML element}
\usage{
add_description(element, descID, description, visible = FALSE)
}
\arguments{
\item{element}{an HTML element to describe}

\item{descID}{the ID of the div that will describe the HTML element}

\item{description}{the description of the HTML element}

\item{visible}{should the description be visible ? Defaults to FALSE}
}
\value{
an HTML element with a description attached to it
}
\description{
Add a description to an HTML element
}
\examples{

if (interactive()) {
  ui <- fluidPage(
    h2("Using a screen reader
        hit <Tab> or <Shift + Tab> to
        navigate between the buttons
        and stop at button 5 to see the difference"),

    actionButton(
      inputId = "inp1",
      label = "button 1"
    ),
    actionButton(
      inputId = "inp2",
      label = "button 2"
    ),
    actionButton(
      inputId = "inp3",
      label = "button 3"
    ),
    actionButton(
      inputId = "inp4",
      label = "button 4"
    ),
    actionButton(
      inputId = "inp5",
      label = "button 5"
    ) \%>\%
      add_description(
        description = "hello this is a button
                   when you click it you'll have a
                   thing, when you don't click it you'll
                   have another thing",
        descID = "chkoup"
      )
  )

  server <- function(input, output, session) {}

  shinyApp(ui, server)
}
}
