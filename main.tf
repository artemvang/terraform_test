resource "random_string" "random" {
  length           = 19
}

output "res" {
  value = random_string.random.result
}
