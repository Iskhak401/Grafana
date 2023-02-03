variable "config_json" {
  type = string
}

variable "folder_id" {
  type    = string
  default = null
}

variable "message" {
  type    = string
  default = null
}

variable "overwrite" {
  type    = bool
  default = false
}

variable "create_folder" {
  type    = bool
  default = true
}

variable "folder_title" {
  type = string
}

variable "folder_uid" {
  type    = string
  default = null
}