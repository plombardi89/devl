variable "name" {
  description = "Name of the Google Cloud VPC network"
}

resource "google_compute_network" "this" {
  name                    = "${var.name}"
  auto_create_subnetworks = true
}

output "network_name" {
  value = "${google_compute_network.this.name}"
}

output "network_self_link" {
  value = "${google_compute_network.this.self_link}"
}
