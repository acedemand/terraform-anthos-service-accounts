resource "google_service_account_key" "component-access-sa" {
  service_account_id = google_service_account.component-access-sa.name
  public_key_type    = "TYPE_X509_PEM_FILE"
}

resource "google_service_account_key" "logging-monitoring-sa" {
  service_account_id = google_service_account.logging-monitoring-sa.name
  public_key_type    = "TYPE_X509_PEM_FILE"
}

resource "google_service_account_key" "connect-register-sa" {
  service_account_id = google_service_account.connect-register-sa.name
  public_key_type    = "TYPE_X509_PEM_FILE"
}

resource "local_file" "logging-monitoring-sa-key-file" {
  filename = "${google_service_account.logging-monitoring-sa.account_id}.json"
  content  = base64decode(google_service_account_key.logging-monitoring-sa.private_key)
}

resource "local_file" "connect-register-sa-key-file" {
  filename = "${google_service_account.connect-register-sa.account_id}.json"
  content  = base64decode(google_service_account_key.connect-register-sa.private_key)
}

resource "local_file" "component-access-sa-key-file" {
  filename = "${google_service_account.component-access-sa.account_id}.json"
  content  = base64decode(google_service_account_key.component-access-sa.private_key)
}
