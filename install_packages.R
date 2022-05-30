


# library bank ----

# check that all packages are installed
list_of_packages <- c('arules',
                      'arulesViz',
                      'assertive',
                      'aws.s3',
                      'blogdown',
                      'bookdown',
                      'caret',
                      'crosswalkr',
                      'data.table',
                      'DBI',
                      'devtools',
                      'digest',
                      'finreportr',
                      'furrr',
                      'ggcorrplot',
                      'ggmap',
                      'glue',
                      'googledrive',
                      'Holidays',
                      'installr',
                      'janitor',
                      'kableExtra',
                      'knitr',
                      'lubridate',
                      'odbc',
                      'openxlsx',
                      'quantmod',
                      'randomForest',
                      'RColorBrewer',
                      'RCurl',
                      'readxl',
                      'reticulate',
                      'RJDBC',
                      'rmarkdown',
                      'RobinHood',
                      'ROCR',
                      'rpart',
                      'rpart.plot',
                      'RPostgreSQL',
                      'rvest',
                      'scales',
                      'schrute',
                      'sftp',
                      'shiny',
                      'snakecase',
                      'stringr',
                      'taskscheduleR',
                      'tidycensus',
                      'tidyverse',
                      'xksx',
                      'zoo')

new_packages <- list_of_packages[!(list_of_packages %in% installed.packages()[,"Package"])]

new_packages

# otherwise install packages
if(length(new_packages)) {
  message(("trying to instal package(s):"))
  print(new_packages)
  install.packages(new_packages)
}

# automatically create a bib database for R packages
knitr::write_bib(c(.packages(), list_of_packages),
                 '~/GitHub/lsb/install_packages/packages.bib')

devtools::install_github("stenevang/sftp")
