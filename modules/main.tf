resource "grafana_folder" "folder" {
  count = var.create_folder ? 1 : 0
  title = var.folder_title
  uid   = var.folder_uid
}


resource "grafana_dashboard" "dashboard" {
  config_json = var.config_json

  folder    = try(grafana_folder.folder[0].id, var.folder_id)
  message   = var.message
  overwrite = var.overwrite
}
