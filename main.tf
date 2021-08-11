resource "random_string" "random" {
  length           = 20
}

output "res" {
  value = random_string.random.result
}
