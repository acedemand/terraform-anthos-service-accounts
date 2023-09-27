resource "google_project_service" "enabled-apis" {
  for_each           = toset(local.enabled_apis)
  service            = each.value
  disable_on_destroy = false
}

resource "google_service_account" "component-access-sa" {
  project      = data.google_project.project.project_id
  account_id   = "${var.prefix}-component-access-sa"
  display_name = "Component Access Service Account"
  description  = "Component Access Service Account for Anthos"
}

resource "google_service_account" "logging-monitoring-sa" {
  project      = data.google_project.project.project_id
  account_id   = "${var.prefix}-logging-monitoring-sa"
  display_name = "Logging Monitoring Service Account"
  description  = "Logging Monitoring Service Account for Anthos"
}

resource "google_service_account" "connect-register-sa" {
  project      = data.google_project.project.project_id
  account_id   = "${var.prefix}-connect-register-sa"
  display_name = "Connect Register Service Account"
  description  = "Connect Register Service Account for Anthos"
}
