
output "service-account-email" {
  value = {
    component-access-sa-email   = google_service_account.component-access-sa.email
    logging-monitoring-sa-email = google_service_account.logging-monitoring-sa.email
    connect-register-sa-email   = google_service_account.connect-register-sa.email
  }
}

output "project-id" {
  value = "Your Project ID is: ${data.google_project.project.project_id}"
}

output "project_number" {
  value = "Your Project Number is: ${data.google_project.project.number}"
}

output "iam-roles" {
  value = {
    component-access-sa-roles   = local.component_access_roles
    logging-monitoring-sa-roles = local.logging_monitoring_roles
    connect-register-sa-roles   = local.connect_register_roles
  }
}

output "apis" {
  value = {
    enabled-apis = local.enabled_apis
  }
}

output "local-key-files" {
  value = {
    logging-monitoring-sa-key-file = "Your logging-monitoring service account key file is located at ${local_file.logging-monitoring-sa-key-file.filename}"
    connect-register-sa-key-file   = "Your connect-register service account key file is located at ${local_file.connect-register-sa-key-file.filename}"
  }
}
