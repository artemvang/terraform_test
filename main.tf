resource "random_string" "random" {
  length           = 18

  provisioner "local-exec" {
    command = "sleep 3600"
  }
}

output "res" {
  value = random_string.random.result
}
