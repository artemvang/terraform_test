provider "google" {
  zone = "us-west1-a"
}

resource "google_sql_database_instance" "test" {
  provider         = google-beta
  name             = "test-db"
  database_version = "POSTGRES_13"

  settings {
    tier              = "db-custom-2-3840"
    availability_type = "REGIONAL"

    backup_configuration {
      enabled = false
    }
  }
}

