resource "google_compute_network" "this" {
  name                    = "custom-vpc"
  auto_create_subnetworks = false
}

output "network_name" {
  value = google_compute_network.this.name
}