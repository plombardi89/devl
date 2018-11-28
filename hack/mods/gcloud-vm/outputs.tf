output "machine_id" {
  value = "${google_compute_instance.this.instance_id}"
}

output "availability_zone" {
  value = "${google_compute_instance.this.zone}"
}
