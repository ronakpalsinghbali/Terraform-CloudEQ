resource "local_file" "test01" {
  filename = "test.py"
 # content  = "print(\"Hello world\")"
  content_base64 = "10100101"
}

resource "local_file" "test02" {
  filename = "test.html"
  content  = "${random_id.Test_value.dec}"
}



locals {
  cont = "Hello Universe"
  conts = "Hello ISRO"
  
}


resource "random_id" "Test_value" {
  byte_length = 8
}