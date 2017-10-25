.libPaths(c(.libPaths(), "/home/ubuntu/databricks/spark/R/lib"))

DATABRICKS_GUID <- "7fb6f27c-ea37-45a5-bcb2-a82514438c0e"
  Sys.setenv(SPARK_HOME = "/databricks/spark")
Sys.setenv(EXISTING_SPARKR_BACKEND_PORT = 41453)

SparkR:::sparkR.session()

library(SparkR)

spark_df = sql("select * from psoc_20170214.alzheimers_disease_ae")

r_df = collect(spark_df)