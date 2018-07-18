# Эти параметры получаются через переменные окружения, задаваемыми
# в terraform-openrc.sh.

variable "instance_name" {
  //название создаваемого инстанса
  default = "terraform-test-1"
}


variable "password" {
  //значение OS_PASSWORD. Запрашивается отдельно у mcs support
//  default = ""
}
variable "user_name" {
//  default = "user@mail.ru"
}

variable "user_domain_id" {

  //значение OS_USER_DOMAIN_ID
//  default = ""
}

variable "tenant_id" {
  //значение OS_PROJECT_ID
  //default = ""
}
