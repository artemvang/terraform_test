resource "random_id" "server" {
  count = 10
  byte_length = 16
}
