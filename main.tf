provider "google" {
}

resource "google_sql_database_instance" "test" {
  provider         = google-beta
  name             = "test-db-kek"
  database_version = "POSTGRES_13"
  region = "us-west1"

  settings {
    tier              = "db-f1-micro"
    availability_type = "REGIONAL"

    backup_configuration {
      enabled = false
    }
  }
}

