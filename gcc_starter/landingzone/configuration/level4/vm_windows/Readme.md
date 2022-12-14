

## Pre-requisites

login account must be the owner of the subscription when creating the level4

## Deployment

rover -lz rover -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/vm_windows \
-parallelism 30 \
-env sandpit \
-tfstate solution_accelerators_vm_windows.tfstate \
-a plan

rover -lz rover -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/vm_windows \
-parallelism 30 \
-env sandpit \
-tfstate solution_accelerators_vm_windows.tfstate \
-a apply

rover -lz rover -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/vm_windows \
-parallelism 30 \
-env sandpit \
-tfstate solution_accelerators_vm_windows.tfstate \
-a destroy
