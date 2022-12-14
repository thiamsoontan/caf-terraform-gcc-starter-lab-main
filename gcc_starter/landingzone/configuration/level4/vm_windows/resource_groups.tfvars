resource_groups = {
  vm_region1 = {
    name = "vm-windows"
    region = "region1"      
    tags = { 
      purpose = "{{zone_code}} vm server resource group" 
      project-code = "{{project_code}}" 
      env = "{{caf_environment}}" 
      zone = "{{zone_code}}"
      tier = "{{tier_code}}"          
    }    
  }
}

