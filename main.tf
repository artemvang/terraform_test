provider "google" {
}

resource "google_sql_database_instance" "test" {
  provider         = google-beta
  name             = "test-db"
  database_version = "POSTGRES_13"
  region = "us-west1"

  settings {
    tier              = "db-custom-4-13312"
    availability_type = "REGIONAL"

    backup_configuration {
      enabled = false
    }
  }
}

