resource "random_string" "random" {
  length           = 15
}

output "res" {
  value = random_string.random.result
}
