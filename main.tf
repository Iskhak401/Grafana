provider "grafana" {
  url  = "https://moldokasymoviskhak.grafana.net/"
  auth = "eyJrIjoiQXZqeTRjandGREUwVTN0SXlabzFOaDNpYW9hM25aYjEiLCJuIjoiS0VZIiwiaWQiOjF9"
}

module "dashboard" {
  source = "./modules"

  config_json = <<EOD
{
  "title": "my-dashboard",         #name for the dashboard
  "uid": "dev"
}
EOD

  folder_title = "COde"  # name of the folder
}