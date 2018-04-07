#devtools::install_github("rstudio/cloudml")
library(cloudml)
library(keras)
#gcloud_install()
gcloud_init()

job = cloudml_train(file="mnist_mlp.R", master_type = "large_model")

job_status()
model_out = job_collect()

job_list()
job_cancel()


model_out$


export_savedmodel()