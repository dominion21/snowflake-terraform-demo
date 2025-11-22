terraform {
  required_providers {
    snowflake = {
      source  = "dominionPower/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "dominionPower"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}
