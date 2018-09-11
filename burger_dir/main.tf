resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "This is burger country.${random_id.random.hex}"
}
