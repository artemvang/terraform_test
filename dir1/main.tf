provider "google" {
}

resource "google_sql_database_instance" "test" {
  count = 10000
  provider         = google-beta
  name             = "test-db-keks"
  database_version = "POSTGRES_13"
  region = "us-west1"

  settings {
    tier              = "db-custom-8-13312"
    availability_type = "REGIONAL"

    backup_configuration {
      enabled = false
    }
  }
}


