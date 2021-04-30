resource "random_string" "random" {
  length           = 16
}

output "res" {
  value = random_string.random.result
}
