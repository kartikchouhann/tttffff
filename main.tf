provider "google" {
  credentials = '${{ secrets.GCP_SERVICE_ACCOUNT_KEY }}'
  project     = "ite-project-370218"
  region      = "us-central1"
}

resource "google_compute_instance" "vm" {
  name         = "my-vm"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Include this section to give the VM an external IP address
    }
  }
}
