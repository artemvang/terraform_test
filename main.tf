resource "random_string" "random" {
  length           = 18
}

output "res" {
  value = random_string.random.result
}
