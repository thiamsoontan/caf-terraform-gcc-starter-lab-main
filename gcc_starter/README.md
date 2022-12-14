
# GCC Starter Kit - scenario H-Model

The H-Model scenario is designed to demonstrate a basic functional foundations to store Terraform state on Azure storage and use it centrally.
The focus of this scenario is to be able to deploy a basic launchpad from a remote machine and use the portal to review the settings in a non-constrained environment.
For example in this scenario you can go to the Key Vaults and view the secrets from the portal, a feature that is disabled in the 300+ scenarios.
We recommend using the 100 scenario for demonstration purposes.

An estimated time of 120 minutes is required to deploy this scenario.

## Pre-requisites

This scenario require the following privileges:

| Component          | Privileges         |
|--------------------|--------------------|
| Active Directory   | None               |
| Azure subscription | Subscription owner |

Agency GCC Environment 

| Azure Resource                                  | Privileges         |
|-------------------------------------------------|--------------------|
| VNet-Ingress/Egress                             | None               |
| VNet-Project Internet                           | None               |
| VNet-Project Intranet                           | None               |
| VNet-Management                                 | None               |
| VNet-DevOps                                     | None               |
| Internet Ingress - Azure Firewall               | None               |
| Internet Web Tier - Application Gateway         | None               |
| Internet App Tier - AKS                         | None               |
| Internet DB Tier - MSSQL                        | None               |
| Internet IT Tier - APIM                         | None               |
| Internet GUT Tier - VM for Forward Proxy        | None               |
| Intranet Web Tier - Application Gateway         | None               |
| Intranet App Tier - AKS                         | None               |
| Intranet DB Tier - MSSQL                        | None               |
| Intranet IT Tier - APIM                         | None               |
| Intranet GUT Tier - VM for Forward Proxy        | None               |
| Management Zone - VM for Tooling Server         | None               |
| DevOps Zone - VM for Runner/Agent + A           | None               |



## Deployment

1. Optional:  if deploy at Azure commerical cloud - create GCC simulator development environment in Azure
```bash
chmod +x /tf/caf/gcc_starter/scripts/deploy_dev_env.sh
/tf/caf/gcc_starter/scripts/deploy_dev_env.sh 
```

2. Deploy gcc starter landingzone and solution accelerators
```bash
chmod +x /tf/caf/gcc_starter/scripts/deploy_gcc_starter.sh
/tf/caf/gcc_starter/scripts/deploy_gcc_starter.sh 
```
