#devtools::install_github("rstudio/cloudml")
library(cloudml)
gcloud_install()
gcloud_init()

cloudml_train(file="mnist_mlp.R")
job_status()
job_collect()
cloudml::job_list()
