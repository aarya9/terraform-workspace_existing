variable "gcp_region_1" {
  type=object({
    default = string
    dev=string
    test=string  
  })

  default={
      default = "us-central1"
      dev="us-central1"
      test="us-east1"
  }
}

variable "gcp_zone_1" {
  type=object({
    default = string
    dev=string
    test=string 
  })
  default={
      default = "us-central1-a"
      dev="us-central1-a"
      test="us-east1-b"
  }
}

variable "public_subnet_cidr_1" {
  type=object({
    default = string
    dev=string
    test=string 
  })
  default={
      default = "10.40.1.0/24"
      dev="10.50.1.0/24"
      test="10.60.1.0/24"
  }
}

variable "network_output_one" {
   type = string
   default = "" 
} 

variable "instance_count" {
  type=number
  default = 1
  
}