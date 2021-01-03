source("./fn_Shiny2Electron.R")
# file.copy(
#     from = list.files(".", "*.R"), to = "./shiny-electron-quick-start",
#     overwrite = TRUE, recursive = TRUE, copy.mode = TRUE
# )

# basic setup

fn_Electron_init()

fn_Shiny2Electron()

# after opening close the process via
shell(paste0("cd ", "./shiny-electron-quick-start && npm stop"))

# only to begin with an mwith major changes, such as new R-Version?
fn_Shiny2Electron(blBuild = TRUE)

# run the once build app


