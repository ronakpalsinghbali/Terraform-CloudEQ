resource "local_file" "test01" {
  filename = "test.py"
 # content  = "print(\"Hello world\")"
  content_base64 = "10100101"
}

resource "local_file" "test02" {
  filename = "test.html"
  content  = "${random_id.Test_value.dec}"
}

resource "local_file" "test03" {
  filename = "test.c"
  content  = local.conts
}

resource "local_file" "test04" {
  filename = "test.jar"
  content  = local.cont
}

locals {
  cont = "Hello universe"
  conts = "Hello NASA"
  
}


resource "random_id" "Test_value" {
  byte_length = 8
}