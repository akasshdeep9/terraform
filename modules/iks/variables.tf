terraform {
  experiments = [module_variable_optional_attrs]
}

#__________________________________________________________
#
# Intersight Provider Variables
#__________________________________________________________

variable "apikey" {
  description = "Intersight API Key."
  sensitive   = true
  type        = string
}

variable "endpoint" {
  default     = "https://intersight.com"
  description = "Intersight URL."
  type        = string
}

variable "secretkey" {
  description = "Intersight Secret Key."
  sensitive   = true
  type        = string
}


#__________________________________________________________
#
# Intersight Organization Variables
#__________________________________________________________

variable "organization" {
  default     = "default"
  description = "Intersight Organization."
  type        = string
}


#______________________________________________
#
# Tenant Variables
#______________________________________________

variable "tenant_name" {
  default     = "default"
  description = "Name of the Tenant."
  type        = string
}

variable "tags" {
  default     = []
  description = "Tags to be Associated with Objects Created in Intersight."
  type        = list(map(string))
}


#______________________________________________
#
# DNS Variables
#______________________________________________

variable "domain_name" {
  default     = "example.com"
  description = "Domain Name for Kubernetes Sysconfig Policy."
  type        = string
}

variable "dns_servers_v4" {
  default     = ["198.18.0.100", "198.18.0.101"]
  description = "DNS Servers for Kubernetes Sysconfig Policy."
  type        = list(string)
}


#______________________________________________
#
# Time Variables
#______________________________________________

variable "ntp_servers" {
  default     = []
  description = "NTP Servers for Kubernetes Sysconfig Policy."
  type        = list(string)
}

variable "timezone" {
  default     = "Etc/GMT"
  description = "Timezone for Kubernetes Sysconfig Policy."
  type        = string
  validation {
    condition = (
      var.timezone == "Africa/Abidjan" ||
      var.timezone == "Africa/Accra" ||
      var.timezone == "Africa/Algiers" ||
      var.timezone == "Africa/Bissau" ||
      var.timezone == "Africa/Cairo" ||
      var.timezone == "Africa/Casablanca" ||
      var.timezone == "Africa/Ceuta" ||
      var.timezone == "Africa/El_Aaiun" ||
      var.timezone == "Africa/Johannesburg" ||
      var.timezone == "Africa/Khartoum" ||
      var.timezone == "Africa/Lagos" ||
      var.timezone == "Africa/Maputo" ||
      var.timezone == "Africa/Monrovia" ||
      var.timezone == "Africa/Nairobi" ||
      var.timezone == "Africa/Ndjamena" ||
      var.timezone == "Africa/Tripoli" ||
      var.timezone == "Africa/Tunis" ||
      var.timezone == "Africa/Windhoek" ||
      var.timezone == "America/Anchorage" ||
      var.timezone == "America/Araguaina" ||
      var.timezone == "America/Argentina/Buenos_Aires" ||
      var.timezone == "America/Asuncion" ||
      var.timezone == "America/Bahia" ||
      var.timezone == "America/Barbados" ||
      var.timezone == "America/Belem" ||
      var.timezone == "America/Belize" ||
      var.timezone == "America/Boa_Vista" ||
      var.timezone == "America/Bogota" ||
      var.timezone == "America/Campo_Grande" ||
      var.timezone == "America/Cancun" ||
      var.timezone == "America/Caracas" ||
      var.timezone == "America/Cayenne" ||
      var.timezone == "America/Cayman" ||
      var.timezone == "America/Chicago" ||
      var.timezone == "America/Costa_Rica" ||
      var.timezone == "America/Cuiaba" ||
      var.timezone == "America/Curacao" ||
      var.timezone == "America/Danmarkshavn" ||
      var.timezone == "America/Dawson_Creek" ||
      var.timezone == "America/Denver" ||
      var.timezone == "America/Edmonton" ||
      var.timezone == "America/El_Salvador" ||
      var.timezone == "America/Fortaleza" ||
      var.timezone == "America/Godthab" ||
      var.timezone == "America/Grand_Turk" ||
      var.timezone == "America/Guatemala" ||
      var.timezone == "America/Guayaquil" ||
      var.timezone == "America/Guyana" ||
      var.timezone == "America/Halifax" ||
      var.timezone == "America/Havana" ||
      var.timezone == "America/Hermosillo" ||
      var.timezone == "America/Iqaluit" ||
      var.timezone == "America/Jamaica" ||
      var.timezone == "America/La_Paz" ||
      var.timezone == "America/Lima" ||
      var.timezone == "America/Los_Angeles" ||
      var.timezone == "America/Maceio" ||
      var.timezone == "America/Managua" ||
      var.timezone == "America/Manaus" ||
      var.timezone == "America/Martinique" ||
      var.timezone == "America/Mazatlan" ||
      var.timezone == "America/Mexico_City" ||
      var.timezone == "America/Miquelon" ||
      var.timezone == "America/Montevideo" ||
      var.timezone == "America/Nassau" ||
      var.timezone == "America/New_York" ||
      var.timezone == "America/Noronha" ||
      var.timezone == "America/Panama" ||
      var.timezone == "America/Paramaribo" ||
      var.timezone == "America/Phoenix" ||
      var.timezone == "America/Port_of_Spain" ||
      var.timezone == "America/Port-au-Prince" ||
      var.timezone == "America/Porto_Velho" ||
      var.timezone == "America/Puerto_Rico" ||
      var.timezone == "America/Recife" ||
      var.timezone == "America/Regina" ||
      var.timezone == "America/Rio_Branco" ||
      var.timezone == "America/Santiago" ||
      var.timezone == "America/Santo_Domingo" ||
      var.timezone == "America/Sao_Paulo" ||
      var.timezone == "America/Scoresbysund" ||
      var.timezone == "America/St_Johns" ||
      var.timezone == "America/Tegucigalpa" ||
      var.timezone == "America/Thule" ||
      var.timezone == "America/Tijuana" ||
      var.timezone == "America/Toronto" ||
      var.timezone == "America/Vancouver" ||
      var.timezone == "America/Whitehorse" ||
      var.timezone == "America/Winnipeg" ||
      var.timezone == "America/Yellowknife" ||
      var.timezone == "Antarctica/Casey" ||
      var.timezone == "Antarctica/Davis" ||
      var.timezone == "Antarctica/DumontDUrville" ||
      var.timezone == "Antarctica/Mawson" ||
      var.timezone == "Antarctica/Palmer" ||
      var.timezone == "Antarctica/Rothera" ||
      var.timezone == "Antarctica/Syowa" ||
      var.timezone == "Antarctica/Vostok" ||
      var.timezone == "Asia/Almaty" ||
      var.timezone == "Asia/Amman" ||
      var.timezone == "Asia/Aqtau" ||
      var.timezone == "Asia/Aqtobe" ||
      var.timezone == "Asia/Ashgabat" ||
      var.timezone == "Asia/Baghdad" ||
      var.timezone == "Asia/Baku" ||
      var.timezone == "Asia/Bangkok" ||
      var.timezone == "Asia/Beirut" ||
      var.timezone == "Asia/Bishkek" ||
      var.timezone == "Asia/Brunei" ||
      var.timezone == "Asia/Calcutta" ||
      var.timezone == "Asia/Choibalsan" ||
      var.timezone == "Asia/Colombo" ||
      var.timezone == "Asia/Damascus" ||
      var.timezone == "Asia/Dhaka" ||
      var.timezone == "Asia/Dili" ||
      var.timezone == "Asia/Dubai" ||
      var.timezone == "Asia/Dushanbe" ||
      var.timezone == "Asia/Gaza" ||
      var.timezone == "Asia/Hong_Kong" ||
      var.timezone == "Asia/Hovd" ||
      var.timezone == "Asia/Irkutsk" ||
      var.timezone == "Asia/Jakarta" ||
      var.timezone == "Asia/Jayapura" ||
      var.timezone == "Asia/Jerusalem" ||
      var.timezone == "Asia/Kabul" ||
      var.timezone == "Asia/Kamchatka" ||
      var.timezone == "Asia/Karachi" ||
      var.timezone == "Asia/Katmandu" ||
      var.timezone == "Asia/Kolkata" ||
      var.timezone == "Asia/Krasnoyarsk" ||
      var.timezone == "Asia/Kuala_Lumpur" ||
      var.timezone == "Asia/Macau" ||
      var.timezone == "Asia/Magadan" ||
      var.timezone == "Asia/Makassar" ||
      var.timezone == "Asia/Manila" ||
      var.timezone == "Asia/Nicosia" ||
      var.timezone == "Asia/Omsk" ||
      var.timezone == "Asia/Pyongyang" ||
      var.timezone == "Asia/Qatar" ||
      var.timezone == "Asia/Rangoon" ||
      var.timezone == "Asia/Riyadh" ||
      var.timezone == "Asia/Saigon" ||
      var.timezone == "Asia/Seoul" ||
      var.timezone == "Asia/Shanghai" ||
      var.timezone == "Asia/Singapore" ||
      var.timezone == "Asia/Taipei" ||
      var.timezone == "Asia/Tashkent" ||
      var.timezone == "Asia/Tbilisi" ||
      var.timezone == "Asia/Tehran" ||
      var.timezone == "Asia/Thimphu" ||
      var.timezone == "Asia/Tokyo" ||
      var.timezone == "Asia/Ulaanbaatar" ||
      var.timezone == "Asia/Vladivostok" ||
      var.timezone == "Asia/Yakutsk" ||
      var.timezone == "Asia/Yekaterinburg" ||
      var.timezone == "Asia/Yerevan" ||
      var.timezone == "Atlantic/Azores" ||
      var.timezone == "Atlantic/Bermuda" ||
      var.timezone == "Atlantic/Canary" ||
      var.timezone == "Atlantic/Cape_Verde" ||
      var.timezone == "Atlantic/Faroe" ||
      var.timezone == "Atlantic/Reykjavik" ||
      var.timezone == "Atlantic/South_Georgia" ||
      var.timezone == "Atlantic/Stanley" ||
      var.timezone == "Australia/Adelaide" ||
      var.timezone == "Australia/Brisbane" ||
      var.timezone == "Australia/Darwin" ||
      var.timezone == "Australia/Hobart" ||
      var.timezone == "Australia/Perth" ||
      var.timezone == "Australia/Sydney" ||
      var.timezone == "Etc/GMT" ||
      var.timezone == "Europe/Amsterdam" ||
      var.timezone == "Europe/Andorra" ||
      var.timezone == "Europe/Athens" ||
      var.timezone == "Europe/Belgrade" ||
      var.timezone == "Europe/Berlin" ||
      var.timezone == "Europe/Brussels" ||
      var.timezone == "Europe/Bucharest" ||
      var.timezone == "Europe/Budapest" ||
      var.timezone == "Europe/Chisinau" ||
      var.timezone == "Europe/Copenhagen" ||
      var.timezone == "Europe/Dublin" ||
      var.timezone == "Europe/Gibraltar" ||
      var.timezone == "Europe/Helsinki" ||
      var.timezone == "Europe/Istanbul" ||
      var.timezone == "Europe/Kaliningrad" ||
      var.timezone == "Europe/Kiev" ||
      var.timezone == "Europe/Lisbon" ||
      var.timezone == "Europe/London" ||
      var.timezone == "Europe/Luxembourg" ||
      var.timezone == "Europe/Madrid" ||
      var.timezone == "Europe/Malta" ||
      var.timezone == "Europe/Minsk" ||
      var.timezone == "Europe/Monaco" ||
      var.timezone == "Europe/Moscow" ||
      var.timezone == "Europe/Oslo" ||
      var.timezone == "Europe/Paris" ||
      var.timezone == "Europe/Prague" ||
      var.timezone == "Europe/Riga" ||
      var.timezone == "Europe/Rome" ||
      var.timezone == "Europe/Samara" ||
      var.timezone == "Europe/Sofia" ||
      var.timezone == "Europe/Stockholm" ||
      var.timezone == "Europe/Tallinn" ||
      var.timezone == "Europe/Tirane" ||
      var.timezone == "Europe/Vienna" ||
      var.timezone == "Europe/Vilnius" ||
      var.timezone == "Europe/Warsaw" ||
      var.timezone == "Europe/Zurich" ||
      var.timezone == "Indian/Chagos" ||
      var.timezone == "Indian/Christmas" ||
      var.timezone == "Indian/Cocos" ||
      var.timezone == "Indian/Kerguelen" ||
      var.timezone == "Indian/Mahe" ||
      var.timezone == "Indian/Maldives" ||
      var.timezone == "Indian/Mauritius" ||
      var.timezone == "Indian/Reunion" ||
      var.timezone == "Pacific/Apia" ||
      var.timezone == "Pacific/Auckland" ||
      var.timezone == "Pacific/Chuuk" ||
      var.timezone == "Pacific/Easter" ||
      var.timezone == "Pacific/Efate" ||
      var.timezone == "Pacific/Enderbury" ||
      var.timezone == "Pacific/Fakaofo" ||
      var.timezone == "Pacific/Fiji" ||
      var.timezone == "Pacific/Funafuti" ||
      var.timezone == "Pacific/Galapagos" ||
      var.timezone == "Pacific/Gambier" ||
      var.timezone == "Pacific/Guadalcanal" ||
      var.timezone == "Pacific/Guam" ||
      var.timezone == "Pacific/Honolulu" ||
      var.timezone == "Pacific/Kiritimati" ||
      var.timezone == "Pacific/Kosrae" ||
      var.timezone == "Pacific/Kwajalein" ||
      var.timezone == "Pacific/Majuro" ||
      var.timezone == "Pacific/Marquesas" ||
      var.timezone == "Pacific/Nauru" ||
      var.timezone == "Pacific/Niue" ||
      var.timezone == "Pacific/Norfolk" ||
      var.timezone == "Pacific/Noumea" ||
      var.timezone == "Pacific/Pago_Pago" ||
      var.timezone == "Pacific/Palau" ||
      var.timezone == "Pacific/Pitcairn" ||
      var.timezone == "Pacific/Pohnpei" ||
      var.timezone == "Pacific/Port_Moresby" ||
      var.timezone == "Pacific/Rarotonga" ||
      var.timezone == "Pacific/Tahiti" ||
      var.timezone == "Pacific/Tarawa" ||
      var.timezone == "Pacific/Tongatapu" ||
      var.timezone == "Pacific/Wake" ||
      var.timezone == "Pacific/Wallis"
    )
    error_message = "Please Validate that you have input a valid timezone. For a List of supported timezones see the following URL.\r\n https://github.com/terraform-cisco-modules/terraform-intersight-imm/blob/master/modules/policies_ntp/README.md."
  }
}


#______________________________________________
#
# IP Pool Variables
#______________________________________________

variable "ip_pools" {
  default = {
    default = {
      from    = 20
      gateway = "198.18.0.1/24"
      name    = "{tenant_name}_ip_pool"
      size    = 30
      tags    = []
    }
  }
  description = "* from - host address of the pool starting address.  Default is 20\r\n* gateway - ip/prefix of the gateway.  Default is 198.18.0.1/24\r\n* name - Name of the IP Pool.  Default is {tenant}_{cluster_name}_ip_pool.\r\n* size - Number of host addresses to assign to the pool.  Default is 30."
  type = map(object(
    {
      from    = optional(number)
      gateway = optional(string)
      name    = optional(string)
      size    = optional(number)
      tags    = optional(list(map(string)))
    }
  ))
}

#__________________________________________________________
#
# Kubernetes Policy Variables
#__________________________________________________________

#______________________________________________
#
# Kubernetes Add-ons Policy Variables
#______________________________________________

variable "k8s_addons" {
  default     = {
    default = {
      install_strategy = "Always"
      name             = "{tenant_name}_{addon_key}"
      release_name     = ""
      tags             = []
      upgrade_strategy = "UpgradeOnly"
    }
  }
  description = "Map of Add-ons for Intersight Kubernetes Service.  Add-ons Options are {ccp-monitor|kubernetes-dashboard}."
  type        = map(object(
    {
      install_strategy = optional(string)
      name             = optional(string)
      release_name     = optional(string)
      tags             = optional(list(map(string)))
      upgrade_strategy = optional(string)
    }
  ))
}


#______________________________________________
#
# Kubernetes Runtime Policy Variables
#______________________________________________

variable "k8s_runtime_create" {
  default     = false
  description = "Flag to specify if the Kubernetes Runtime Policy should be created or not."
  type        = bool
}

variable "k8s_runtime" {
  default = {
    default = {
      docker_bridge_cidr = ""
      docker_no_proxy    = []
      http_hostname      = ""
      http_port          = 8080
      http_protocol      = "http"
      http_username      = ""
      https_hostname     = ""
      https_port         = 8443
      https_protocol     = "https"
      https_username     = ""
      name               = ""
      tags               = []
    }
  }
  description = ""
  # description = "Docker no proxy list, when using internet proxy.  Default is no list."
  # description = "Proxy HTTP Port."
  # description = "Proxy HTTP Protocol."
  # description = "Password for the HTTP Proxy Server, If required."
  # description = "Password for the HTTPS Proxy Server, If required."
  # description = "Proxy HTTPS Port."
  # description = "Proxy HTTP Protocol."
  type = map(object(
    {
      docker_bridge_cidr = optional(string)
      docker_no_proxy    = optional(list(string))
      http_hostname      = optional(string)
      http_port          = optional(number)
      http_protocol      = optional(string)
      http_username      = optional(string)
      https_hostname     = optional(string)
      https_port         = optional(number)
      https_protocol     = optional(string)
      https_username     = optional(string)
      name               = optional(string)
      tags               = optional(list(map(string)))
    }
  ))
}

variable "k8s_runtime_http_password" {
  default     = ""
  description = "Password for the HTTP Proxy Server, If required."
  sensitive   = true
  type        = string
}

variable "k8s_runtime_https_password" {
  default     = ""
  description = "Password for the HTTPS Proxy Server, If required."
  sensitive   = true
  type        = string
}


#______________________________________________
#
# Kubernetes Trusted Registries Variables
#______________________________________________

variable "k8s_trusted_create" {
  default     = false
  description = "Flag to specify if the Kubernetes Runtime Policy should be created or not."
  type        = bool
}

variable "k8s_trusted_registry" {
  default = {
    default = {
      name     = ""
      root_ca  = []
      tags     = []
      unsigned = []
    }
  }
  # description = "Kubernetes Trusted Registry Policy Name.  Default is {tenant_name}_registry."
  # description = "List of root CA Signed Registries."
  # description = "List of unsigned registries to be supported."
  type = map(object(
    {
      name     = optional(string)
      root_ca  = optional(list(string))
      tags     = optional(list(map(string)))
      unsigned = optional(list(string))
    }
  ))
}

#______________________________________________
#
# Kubernetes Version Variables
#______________________________________________

variable "k8s_version" {
  default = {
    default = {
      name    = ""
      tags    = []
      version = "1.19.5"
    }
  }
  description = "Kubernetes Version to Deploy."
  # description = "Kubernetes Trusted Registry Policy Name.  Default is {tenant_name}_registry."
  type = map(object(
    {
      name    = optional(string)
      tags    = optional(list(map(string)))
      version = optional(string)
    }
  ))
}


#______________________________________________
#
# K8S VM Infra Policy Variables
#______________________________________________

# variable "vsphere_target" {
#   default     = "210"
#   description = "vSphere Server registered as a Target in Intersight.  The default, 210, only works if this is for the DevNet Sandbox."
#   type        = string
#   validation {
#     condition = (
#       can(regex("^[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}$", var.vsphere_target)) ||
#       can(regex("^[0-9]{1,3}$", var.vsphere_target)) ||
#       can(regex("^[[:alnum:]]+", var.vsphere_target))
#     )
#     error_message = "The vsphere_target must be in the format hostname or IPv4 Address or just a number."
#   }
# }
# output "vsphere_target" {
#   description = "vSphere Target."
#   value = trimspace(<<-EOT
#   %{if can(regex("[\\d]{1,3}\\.[\\d]{1,3}\\.", var.vsphere_target))}${var.vsphere_target}%{endif}
#   %{if can(regex("^[0-9]{1,3}$", var.vsphere_target))}${join(".", [var.network_prefix, var.vsphere_target])}%{endif}
#   %{if can(regex("^[[:alnum:]]+", var.vsphere_target))}${var.vsphere_target}%{endif}
#   EOT
#   )
# }


#______________________________________________
#
# Kubernetes Virtual Machine Infra Variables
#______________________________________________

variable "k8s_vm_infra" {
  default = {
    default = {
      name                  = ""
      tags                  = []
      vsphere_cluster       = "default"
      vsphere_datastore     = "datastore1"
      vsphere_portgroup     = ["VM Network"]
      vsphere_resource_pool = ""
      vsphere_target        = ""
    }
  }
  description = "Kubernetes Virtual Machine Infrastructure Configuration Policy.  Default name is {tenant_name}_vm_infra."
  # description = "vSphere Cluster to assign the K8S Cluster Deployment."
  # description = "vSphere Datastore to assign the K8S Cluster Deployment."
  # description = "vSphere Port Group to assign the K8S Cluster Deployment."
  # description = "vSphere Resource Pool to assign the K8S Cluster Deployment."
  type = map(object(
    {
      name                  = optional(string)
      tags                  = optional(list(map(string)))
      vsphere_cluster       = string
      vsphere_datastore     = string
      vsphere_portgroup     = list(string)
      vsphere_resource_pool = optional(string)
      vsphere_target        = string
    }
  ))
}

variable "k8s_vm_infra_password" {
  description = "vSphere Password.  Note: this is the password of the Credentials used to register the vSphere Target."
  sensitive   = true
  type        = string
}


#______________________________________________
#
# Kubernetes Virtual Machine Instance Variables
#______________________________________________

variable "k8s_vm_instance" {
  default = {
    default = {
      cpu     = 4
      disk    = 40
      memory  = 16384
      tags    = []
    }
  }
  description = "Kubernetes Virtual Machine Instance Policy Variables.  Default name is {tenant_name}_vm_network."
  type = map(object(
    {
      cpu     = optional(number)
      disk    = optional(number)
      memory  = optional(number)
      tags    = optional(list(map(string)))
    }
  ))
}


#______________________________________________
#
# Kubernetes Virtual Machine Node OS Variables
#______________________________________________

variable "k8s_vm_network" {
  default = {
    default = {
      cidr_pod     = "100.64.0.0/16"
      cidr_service = "100.65.0.0/16"
      cni          = "Calico"
      name         = ""
      tags         = []
    }
  }
  description = "Kubernetes Virtual Machine Network Configuration Policy.  Default name is {tenant_name}_vm_network."
  # description = "Supported CNI type. Currently we only support Calico.\r\n* Calico - Calico CNI plugin as described in:\r\n https://github.com/projectcalico/cni-plugin."
  # description = "Pod CIDR Block to be used to assign Pod IP Addresses."
  # description = "Service CIDR Block used to assign Cluster Service IP Addresses."
  type = map(object(
    {
      cidr_pod     = optional(string)
      cidr_service = optional(string)
      cni          = optional(string)
      name         = optional(string)
      tags         = optional(list(map(string)))
    }
  ))
}


#__________________________________________________________
#
# Intersight Kubernetes Service Cluster Variables
#__________________________________________________________

#______________________________________________
#
# IKS Cluster Variables
#______________________________________________

variable "iks_cluster" {
  default = {
    default = {
      action                     = "Deploy"
      addons                     = []
      control_plane_desired_size = 1
      control_plane_intance_moid = "**REQUIRED**"
      control_plane_max_size     = 3
      ip_pool_moid               = "**REQUIRED**"
      k8s_vm_infra_moid          = "**REQUIRED**"
      load_balancers             = 3
      ssh_key                    = "ssh_key_1"
      ssh_user                   = "iksadmin"
      registry_moid              = ""
      runtime_moid               = []
      tags                       = []
      version_moid               = "**REQUIRED**"
      vm_network_moid            = "**REQUIRED**"
      wait_for_complete          = false
      worker_desired_size        = 0
      worker_intance_moid        = "**REQUIRED**"
      worker_max_size            = 4
    }
  }
  description = "Action to perform on the Intersight Kubernetes Cluster.  Options are {Delete|Deploy|Ready|No-op|Unassign}."
  # description = "Intersight Kubernetes Load Balancer count."
  # description = "Intersight Kubernetes Service Cluster Default User."
  # description = "Intersight Kubernetes Service Cluster SSH Public Key."
  # description = "K8S Control Plane Virtual Machine Instance Type moid."
  # description = "K8S Control Plane Desired Cluster Size."
  # description = "K8S Control Plane Maximum Cluster Size."
  # description = "K8S Worker Virtual Machine Instance Type moid."
  # description = "K8S Worker Desired Cluster Size."
  # description = "K8S Worker Maximum Cluster Size."
  type = map(object(
    {
      action                     = optional(string)
      addons                     = optional(set(string))
      control_plane_desired_size = optional(number)
      control_plane_intance_moid = string
      control_plane_max_size     = optional(number)
      ip_pool_moid               = string
      k8s_vm_infra_moid          = string
      load_balancers             = optional(number)
      ssh_key                    = string
      ssh_user                   = string
      registry_moid              = optional(string)
      runtime_moid               = optional(list(map(string)))
      tags                       = optional(list(map(string)))
      version_moid               = string
      vm_network_moid            = string
      wait_for_complete          = optional(bool)
      worker_desired_size        = optional(number)
      worker_intance_moid        = string
      worker_max_size            = optional(number)
    }
  ))
}

variable "ssh_key_1" {
  default     = ""
  description = "Intersight Kubernetes Service Cluster SSH Public Key 1."
  sensitive   = true
  type        = string
}

variable "ssh_key_2" {
  default     = ""
  description = "Intersight Kubernetes Service Cluster SSH Public Key 2.  These are place holders for Tenants that use different keys for different clusters."
  sensitive   = true
  type        = string
}

variable "ssh_key_3" {
  default     = ""
  description = "Intersight Kubernetes Service Cluster SSH Public Key 3.  These are place holders for Tenants that use different keys for different clusters."
  sensitive   = true
  type        = string
}

variable "ssh_key_4" {
  default     = ""
  description = "Intersight Kubernetes Service Cluster SSH Public Key 4.  These are place holders for Tenants that use different keys for different clusters."
  sensitive   = true
  type        = string
}

variable "ssh_key_5" {
  default     = ""
  description = "Intersight Kubernetes Service Cluster SSH Public Key 5.  These are place holders for Tenants that use different keys for different clusters."
  sensitive   = true
  type        = string
}
