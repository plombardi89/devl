provider "google" {
  project = ""
  region  = "us-central1"
}

data "google_compute_zones" "current" {}

module "machine" {
  source = "../mods/gcloud-vm"

  network_name      = "default"
  machine_name      = "philip"
  machine_type      = "n1-standard-1"
  machine_image     = "ubuntu-1810-nosnapd"
  availability_zone = "us-central1-a"
}
