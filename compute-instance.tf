# Enable the Compute Engine API
# Alternatively you can do this directly via the GCP GUI
resource "google_project_service" "compute" {

  project            = var.project_id
  service            = "compute.googleapis.com"
  disable_on_destroy = false
}


resource "google_project_service" "cloudresourcemanager" {

  project            = var.project_id
  service            = "cloudresourcemanager.googleapis.com"
  disable_on_destroy = false
}


resource "google_compute_instance" "default" {
  name         = "terraform-test-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  # Before we can create a compute instance we have to enable the the Compute API
  depends_on = [
    google_project_service.cloudresourcemanager,
  google_project_service.compute]
}