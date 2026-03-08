output "vm_name" {
  description = "Nom de la VM"
  value       = google_compute_instance.vm.name
}

output "vm_ip" {
  description = "IP publique de la VM"
  value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}

output "vm_zone" {
  description = "Zone de la VM"
  value       = google_compute_instance.vm.zone
}