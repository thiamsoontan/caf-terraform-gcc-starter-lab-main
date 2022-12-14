#
# do not change
#

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
# /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
# -level level3 \
# -var-folder /tf/caf/gcc_starter/landingzone/configuration/dev_env \
# -env sandpit \
# -tfstate dev_env.tfstate \
# -a apply

# 3. shared services - diagnostics definition
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level3/shared_services \
-env sandpit \
-tfstate shared_services.tfstate \
-a plan

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level3/shared_services \
-env sandpit \
-tfstate shared_services.tfstate \
-a apply

# 4. networking hub - ingress firewall
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level3/networking_hub_ingress \
-env sandpit \
-tfstate networking_hub_ingress.tfstate \
-a plan

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level3/networking_hub_ingress \
-env sandpit \
-tfstate networking_hub_ingress.tfstate \
-a apply

# 5. networking spoke - subnets, nsg - internet, intranet, management and devops zone
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level3/networking_spoke_internet \
-env sandpit \
-tfstate networking_spoke_internet.tfstate \
-a plan

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level3/networking_spoke_internet \
-env sandpit \
-tfstate networking_spoke_internet.tfstate \
-a apply

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level3/networking_spoke_intranet \
-env sandpit \
-tfstate networking_spoke_intranet.tfstate \
-a plan

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level3/networking_spoke_intranet \
-env sandpit \
-tfstate networking_spoke_intranet.tfstate \
-a apply

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level3/networking_spoke_management \
-env sandpit \
-tfstate networking_spoke_management.tfstate \
-a plan

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level3/networking_spoke_management \
-env sandpit \
-tfstate networking_spoke_management.tfstate \
-a apply

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level3/networking_spoke_devops \
-env sandpit \
-tfstate networking_spoke_devops.tfstate \
-a plan

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level3/networking_spoke_devops \
-env sandpit \
-tfstate networking_spoke_devops.tfstate \
-a apply

# 6. solution accelerators

# internet zone 

# solution accelerators - aks - app tier
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/internet/aks \
-env sandpit \
-tfstate solution_accelerators_internet_aks.tfstate \
-a plan

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/internet/aks \
-env sandpit \
-tfstate solution_accelerators_internet_aks.tfstate \
-a apply





# solution accelerators - mssql - data tier
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/internet/mssql \
-env sandpit \
-tfstate solution_accelerators_internet_mssql.tfstate \
-a apply


# solution accelerators - mssql - data tier
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/internet/redis \
-env sandpit \
-tfstate solution_accelerators_internet_redis.tfstate \
-a apply

# solution accelerators - apim - it tier
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/internet/apim \
-env sandpit \
-tfstate solution_accelerators_internet_apim.tfstate \
-a apply

# solution accelerators - internet_it_vm_sftp - it tier
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/internet/vm_linux_sftp_it \
-env sandpit \
-tfstate solution_accelerators_internet_vm_linux_sftp_it.tfstate \
-a apply

# solution accelerators - vm - linux - forward proxy
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/internet/vm_linux_fp \
-env sandpit \
-tfstate solution_accelerators_internet_vm_linux_fp.tfstate \
-a apply

# solution accelerators - internet_it_vm_sftp - gut tier
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/internet/vm_linux_sftp_gut \
-env sandpit \
-tfstate solution_accelerators_internet_vm_linux_sftp_gut.tfstate \
-a apply



# intranet zone 

# solution accelerators - aks - app tier
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/intranet/aks \
-env sandpit \
-tfstate solution_accelerators_intranet_aks.tfstate \
-a apply





# solution accelerators - mssql - data tier
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/intranet/mssql \
-env sandpit \
-tfstate solution_accelerators_intranet_mssql.tfstate \
-a apply


# solution accelerators - mssql - data tier
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/intranet/redis \
-env sandpit \
-tfstate solution_accelerators_intranet_redis.tfstate \
-a apply

# solution accelerators - apim - it tier
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/intranet/apim \
-env sandpit \
-tfstate solution_accelerators_intranet_apim.tfstate \
-a apply


# solution accelerators - vm - linux - forward proxy
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/intranet/vm_linux_fp \
-env sandpit \
-tfstate solution_accelerators_intranet_vm_linux_fp.tfstate \
-a apply



# devops zone

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/devops/acr \
-env sandpit \
-tfstate solution_accelerators_acr.tfstate \
-a apply


# management zone

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/management/bastion \
-env sandpit \
-tfstate solution_accelerators_bastion.tfstate \
-a apply



