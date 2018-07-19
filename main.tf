resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "a_good_day_to_merge_${random_id.random.hex}"
}
