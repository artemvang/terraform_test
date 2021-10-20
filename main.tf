provider "google" {
}

resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = "e2-small"
  zone         = "us-central1-a"
   network_interface {
    network       = "terraform-network"
    subnetwork    = "terraform-subnetwork"
    access_config {
    }
   }
  labels = {
    owner = var.owner
  }
boot_disk {
 initialize_params {
    image = "centos-cloud/centos-7"
   }
  }
 }

