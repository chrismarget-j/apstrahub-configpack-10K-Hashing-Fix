variable "blueprint_id" {
  type = string
}

variable "name" {
  type = string
  default = "ECMP Hashing Fix"
  description = "Name of the Configlet when imported into the Blueprint"
}
