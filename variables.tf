variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "project_number" {
  description = "Project Number"
  type        = number
}

variable "region" {
  description = "Deploy region"
  type        = string
}

variable "db_password" {
  description = "SQL DB Password"
  type        = string
}

variable "github_key" {
  description = "GitHub Key"
  type        = string
}

variable "github_app_id" {
  description = "GitHub APP ID"
  type        = number
}

module "cloud_run" {
  source = "./modules/cloud_run"
  project_name = var.project_name
  project_number = var.project_number
  db_password = var.db_password
  cloud_sql_instance = module.sql_database.cloud_sql_instance
}