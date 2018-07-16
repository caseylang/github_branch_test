resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "ok-go-${random_id.random.hex}"
}
