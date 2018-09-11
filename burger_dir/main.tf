resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "Oh hey! A Pizza! ${random_id.random.hex}"
}
