# network_output_one=network_output
resource "random_id" "instance_id" {
  byte_length=4
}

resource "google_compute_instance" "vm_instance_public" {
    count=3
    name="${lookup(var.app_name,terraform.workspace)}-${lookup(var.app_environment,terraform.workspace)}-vm-${count.index}"
    machine_type = "f1-micro"
    zone = lookup(var.gcp_zone_1,terraform.workspace)
    hostname="${lookup(var.app_name,terraform.workspace)}-vm-${random_id.instance_id.hex}.${lookup(var.app_domain,terraform.workspace)}"
    tags=["ssh","http"]

    boot_disk {
      initialize_params{
          image="centos-cloud/centos-7"
      }
    }
    metadata_startup_script = "sudo apt-get update; sudo apt-get install apache2"

    network_interface {
      #network="${data.google_compute_network.appdev-envdev-vpc.name}"
      network="${data.google_compute_network.appdev-envdev-vpc.name}"
      subnetwork=google_compute_subnetwork.appdevsubnet.name
      # access_config {}
    }
}