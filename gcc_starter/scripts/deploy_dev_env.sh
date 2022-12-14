# 1. launchpad
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_launchpad \
  -launchpad \
  -var-folder /tf/caf/gcc_starter/landingzone/configuration/level0/launchpad \
  -env sandpit \
  -a plan

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_launchpad \
  -launchpad \
  -var-folder /tf/caf/gcc_starter/landingzone/configuration/level0/launchpad \
  -env sandpit \
  -a apply

# DO NOT execute this in GCC
# 2. development environment - (optional) - applicable for your own test environment in Azure Commercial Cloud
#    simulating the creation five vnet(s) and one log analytive workspace from GovTech GCC during onboarding

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/dev_env \
-env sandpit \
-tfstate dev_env.tfstate \
-a plan

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/dev_env \
-env sandpit \
-tfstate dev_env.tfstate \
-a apply