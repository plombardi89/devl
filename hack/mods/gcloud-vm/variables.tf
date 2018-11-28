variable "machine_name" {
  description = "Name of the machine"
}

variable "machine_type" {
  description = "Hardware type for the machine"
}

variable "machine_image" {
  description = "Name or ID of the machine OS image"
}

variable "network_name" {
  description = "Name of the Google Cloud network"
}

variable "availability_zone" {}