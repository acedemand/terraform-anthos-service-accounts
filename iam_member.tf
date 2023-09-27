resource "google_project_iam_member" "component-access-sa-iam" {
  project  = data.google_project.project.project_id
  for_each = toset(local.component_access_roles)
  role     = "roles/${each.value}"
  member   = "serviceAccount:${google_service_account.component-access-sa.email}"
}

resource "google_project_iam_member" "logging-monitoring-sa-iam" {
  project  = data.google_project.project.project_id
  for_each = toset(local.logging_monitoring_roles)
  role     = "roles/${each.value}"
  member   = "serviceAccount:${google_service_account.logging-monitoring-sa.email}"
}

resource "google_project_iam_member" "connect-register-sa-iam" {
  project  = data.google_project.project.project_id
  for_each = toset(local.connect_register_roles)
  role     = "roles/${each.value}"
  member   = "serviceAccount:${google_service_account.connect-register-sa.email}"
}
