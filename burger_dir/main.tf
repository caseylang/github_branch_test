resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "CHEESE_ON_TOP_${random_id.random.hex}"
}
