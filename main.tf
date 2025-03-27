terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "dominionllc"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_tbl" "orders" {
  name    = "create or replace TABLE SPEEDY_ORDERS_RAW_STG (
	ORDER_ID VARCHAR(16777216),
	ORDER_DATETIME TIMESTAMP_NTZ(9),
	ITEMS VARIANT,
	SOURCE_FILE_NAME VARCHAR(16777216),
	LOAD_TS TIMESTAMP_NTZ(9)
);"
  comment = "TABLE for Snowflake Terraform demo"
}