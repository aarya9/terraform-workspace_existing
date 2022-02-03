
# # #allow HTTP

# # resource "google_compute_firewall" "allow-http" {
# #   name = "${lookup(var.app_name,terraform.workspace)}-${lookup(var.app_environment,terraform.workspace)}-fw-allow-http"
# #   network = "${data.google_compute_network.appdev-envdev-vpc.name}"
# #   allow {
# #     protocol="tcp"
# #     ports=["80"]
# #   }
# #   target_tags = ["http"]
# #   source_tags = ["mynetwork"]
# # }

# # #allow HTTPS

# # resource "google_compute_firewall" "allow-https" {
# #   name = "${lookup(var.app_name,terraform.workspace)}-${lookup(var.app_environment,terraform.workspace)}-fw-allow-https"
# #   network = "${data.google_compute_network.appdev-envdev-vpc.name}"
# #   allow {
# #     protocol="tcp"
# #     ports=["443"]
# #   }
# #   target_tags = ["https"]
# #   source_tags = ["mynetwork"]
# # }

# # #allow SSH

# # resource "google_compute_firewall" "allow-ssh" {
# #   name = "${lookup(var.app_name,terraform.workspace)}-${lookup(var.app_environment,terraform.workspace)}-fw-allow-sh"
# #   network = "${data.google_compute_network.appdev-envdev-vpc.name}"
# #   allow {
# #     protocol="tcp"
# #     ports=["22"]
# #   }
# #   target_tags = ["ssh"]
# #   source_tags = ["mynetwork"]
# # }

# # #allow RDP
# # resource "google_compute_firewall" "allow-rdp" {
# #   name = "${lookup(var.app_name,terraform.workspace)}-${lookup(var.app_environment,terraform.workspace)}-fw-allow-rdp"
# #   network = "${data.google_compute_network.appdev-envdev-vpc.name}"
# #   allow {
# #     protocol="tcp"
# #     ports=["3389"]
# #   }
# #   target_tags = ["rdp"]
# #   source_tags = ["mynetwork"]
# # }

# data "google_compute_firewall" "appdev-envdev-fw-allow-http" {
#   name                    = "appdev-envdev-fw-allow-http"
#   project                 = "terraform-336010"
  
# }

# data "google_compute_firewall" "appdev-envdev-fw-allow-https" {
#   name                    = "appdev-envdev-fw-allow-https"
#   project                 = "terraform-336010"
# }

# data "google_compute_firewall" "appdev-envdev-fw-allow-sh" {
#   name                    = "appdev-envdev-fw-allow-sh"
#   project                 = "terraform-336010"
  
# }

# data "google_compute_firewall" "appdev-envdev-fw-allow-rdp" {
#   name                    = "appdev-envdev-fw-allow-rdp"
#   project                 = "terraform-336010"
# }