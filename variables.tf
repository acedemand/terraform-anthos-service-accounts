locals {
  enabled_apis = [
    "anthos.googleapis.com",
    "connectgateway.googleapis.com",
    "anthosaudit.googleapis.com",
    "anthosgke.googleapis.com",
    "bigquery.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "container.googleapis.com",
    "gkeconnect.googleapis.com",
    "gkehub.googleapis.com",
    "opsconfigmonitoring.googleapis.com",
    "iam.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "serviceusage.googleapis.com",
    "stackdriver.googleapis.com",
    "storage.googleapis.com",
    "gkeonprem.googleapis.com",
  ]
  component_access_roles = [
    "compute.viewer",
    "serviceusage.serviceUsageViewer",
    "iam.roleViewer",
    "iam.serviceAccountViewer",
  ]
  connect_register_roles = [
    "gkehub.editor"
  ]
  logging_monitoring_roles = [
    "logging.logWriter",
    "monitoring.metricWriter",
    "monitoring.dashboardEditor",
    "stackdriver.resourceMetadata.writer",
    "opsconfigmonitoring.resourceMetadata.writer"
  ]
}

data "google_project" "project" {
  project_id = var.project
}

variable "project" {
  type        = string
  description = "The ID of the project in which resources will be provisioned."
}

variable "prefix" {
  type        = string
  description = "The prefix to use for service accounts."
}

variable "region" {
  type        = string
  description = "The region in which resources will be provisioned."
}
