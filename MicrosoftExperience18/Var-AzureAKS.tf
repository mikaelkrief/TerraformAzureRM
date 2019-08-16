# Variables (here to separate code from config) one of the 12 factors app best practices
# Variables (ici pour séparer le code de la config) une des bonnes pratiques du 12 factors app

# Variable nom du cluster AKS
# Variable AKS Name
variable "AKS-Name" {
  type    = "string"
  # default = ""
}

# Variable nombre de nodes Kubernetes
# Variable number of kubernetes nodes
# Min : 3, Recommended : 3 or more
variable "Nb-NodesKubernetes" {
  type    = "string"
  default = "3"
}

# Kubernetes Version
variable "KubernetesVersion" {
  type    = "string"
  default = "1.11.2"
}

# Variable DNS Préfixe
# Variable DNS Prefix
variable "DNSPrefix" {
  type    = "string"
  # default = ""
}

# Variable admin name
# Variable nom d'admin
variable "AdminName" {
  type    = "string"
  default = "stan"
}

# Variable clé publique SSH
# SSH public key
# it's still better to use an SSH key stored as a secret in an Azure KeyVault and a Datasource
# please look here : https://www.terraform.io/docs/providers/azurerm/d/key_vault_secret.html 
 variable "SSHKeyAdmin" {
   type    = "string"
   default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQClspfw7V+U12KdN/Pe3BFIaXPnqeiA60kSDp7pPRqkVFs/8SB/HO05Lx+p2GhnP2XU+ZejB/7PYUuxobpa6GozymzoRpn3eg+rEyyiySNSYsUA4l70MnybISpn2fKc/OQImb3gylPqxYEBR3Qd9S7lKEVD3DCj26t9poxXzwPrVlmWApvLyroJ3ASIiLUPyPWbsB81vf/PNdEl3mCVny3u1cUBEt0+EWXz7AVowr4fnX4KNw9sZcSASFhd0JBDWwbi/fxl/mGTxh1yErabhn4AoezNpGqyHSReIGaojybvSg6HiUbF/s97vNZczlhXgkbjFL0R4l3aG9R/GxZFlZbb krief_mikael@hotmail.com"
 }

# Taille des noeuds AKS
# AKS node VM Size
# By Default : Standard_D1_v2
variable "AKSNodeVMSize" {
  type    = "string"
  default = "Standard_B2s"
}

# OS des noeuds AKS
# AKS node Operating System
# By Default : Linux
variable "AKSNodeOS" {
  type    = "string"
  default = "Linux"
}

# Variable Tag Environnement
variable "Tag-environnement" {
  type    = "string"
  default = "Production"
}

# Variable Service Principal clientID
variable "SPNClientID" {
  type    = "string"
  default = "b37561f6-5f97-4159-ac96-dc0d87719737"
}

# Variable Service Principal clientSecret
variable "SPNClientSecret" {
  type    = "string"
  default = "OxCV/9IqosAH/anlSJpkkQyZ3cP+370u63pzZ/1wl6g="
}






