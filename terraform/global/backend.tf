terraform {
 backend "gcs" {
   bucket  = "tfstate-iam-us-k8s-workshop"
   prefix  = "global/state"
   project = "us-k8s-wokshop"
 }
}
