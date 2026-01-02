output "vm_external_ip" {
  description = "External IP address of the VM"
  value       = google_compute_instance.myvm.network_interface[0].access_config[0].nat_ip
}

output "bucket_name" {
  description = "Name of the storage bucket"
  value       = google_storage_bucket.mybucket.name
}