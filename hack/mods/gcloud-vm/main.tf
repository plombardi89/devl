resource "google_compute_instance" "this" {
  name         = "${var.machine_name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.availability_zone}"
  min_cpu_platform          = "Intel Skylake"
  allow_stopping_for_update = true


  tags = ["${var.machine_name}"]

  boot_disk {
    initialize_params {
      image = "${var.machine_image}"
    }
  }

  scratch_disk { }

  network_interface {
    network = "${var.network_name}"

    access_config {}
  }

  scheduling {
    preemptible = true
    automatic_restart = false
    on_host_maintenance = "TERMINATE"
  }
}

resource "google_compute_firewall" "default" {
  name    = "fw-${var.machine_name}"
  network = "${var.network_name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_tags = ["${var.machine_name}"]
}