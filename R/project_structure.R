# Create structured dir project
#
# This is an a function that checks the current
# project directory and creates the folder structure
# to keep projects organized
#
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

create <- function(dir = '.') {

  main <- dir
  data <- 'data'
  doc <- 'doc'
  figs <- 'figs'
  output <- 'output'
  src <- 'src'

  ifelse(!dir.exists(file.path(main, data)), dir.create(file.path(main, data)), FALSE)
  ifelse(!dir.exists(file.path(main, doc)), dir.create(file.path(main, doc)), FALSE)
  ifelse(!dir.exists(file.path(main, figs)), dir.create(file.path(main, figs)), FALSE)
  ifelse(!dir.exists(file.path(main, output)), dir.create(file.path(main, output)), FALSE)
  ifelse(!dir.exists(file.path(main, src)), dir.create(file.path(main, src)), FALSE)

  file.copy(from = '~/UsefulR/initialConfig.R', to = './src',
            overwrite = TRUE, recursive = FALSE,
            copy.mode = TRUE)

}
