resource "snowflake_tbl" "orders" {
  name = <<EOT
create or replace TABLE SPEEDY_ORDERS_RAW_STG (
    ORDER_ID VARCHAR(16777216),
    ORDER_DATETIME TIMESTAMP_NTZ(9),
    ITEMS VARIANT,
    SOURCE_FILE_NAME VARCHAR(16777216),
    LOAD_TS TIMESTAMP_NTZ(9)
);
EOT

  comment = "TABLE for Snowflake Terraform demo"
}
