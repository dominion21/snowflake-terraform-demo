resource "snowflake_schema" "demo_schema" {
  database = snowflake_database.demo_db.name
  name     = "DEMO_SCHEMA"
  comment  = "Schema for Snowflake Terraform demo"
}

resource "snowflake_warehouse" "terraform_wh"{
  name = "terraform_wh"
  comment =  "warehouse for terraform project"
}