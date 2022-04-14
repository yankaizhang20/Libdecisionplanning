message(STATUS CMAKE step-solver)

aux_source_directory(. solver)
add_library(StepSolver ${solver})
add_executable(test ${solver})

