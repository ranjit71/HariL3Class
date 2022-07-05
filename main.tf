provider "aws" {    
    region = "us-east-1"
    version = "~> 2.4"
    profile = "terraform"
}


module "Account-Security"{
  source = "./modules/Account-Security"
}
  
module "account-standardizations"{
  source = "./modules/account-standardizations"
  PermissionsBoundary = var.PermissionsBoundary
  AllowUsersToChangePassword = var.AllowUsersToChangePassword
  HardExpiry = var.HardExpiry
  MaxPasswordAge = var.MaxPasswordAge
  MinimumPasswordLength = var.MinimumPasswordLength
  PasswordReusePrevention = var.PasswordReusePrevention
  RequireLowercaseCharacters = var.RequireLowercaseCharacters
  RequireNumbers = var.RequireNumbers
  RequireSymbols = var.RequireSymbols
  RequireUppercaseCharacters = var.RequireUppercaseCharacters
  LogsRetentionInDays = var.LogsRetentionInDays
}
