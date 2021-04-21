resource "random_string" "random" {
  length           = 17
}

output "res" {
  value = random_string.random.result
}
