# Activer les APIs nécessaires
resource "google_project_service" "compute" {
  service            = "compute.googleapis.com"
  disable_on_destroy = false
}

# Créer la VM
resource "google_compute_instance" "vm" {
  name         = var.vm_name
  machine_type = "e2-micro"
  zone         = var.zone

  depends_on = [google_project_service.compute]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 10
    }
  }

  network_interface {
    network = "default"
    access_config {
      # IP publique automatique
    }
  }

  metadata = {
    environment = var.environment
    managed-by  = "terraform"
    owner       = "fadi"
  }

  tags = ["vm-exercise", var.environment]
}