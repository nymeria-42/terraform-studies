data "template_file" "json" {
  template = file("template.json.tpl")

  vars = {
    age    = 33
    eye    = "Brown"
    name   = "Cleber"
    gender = "Male"
  }
} # le arquivo do template, no caso um json, e passa dinamicamente os valores em vars. Substitui como na interpolação os valores do json

data "archive_file" "json" {
  type        = local.file_ext
  output_path = "${path.module}/files/${local.object_name}.${local.file_ext}"

  source {
    content  = data.template_file.json.rendered
    filename = "${local.object_name}.json"
  }
} # pega o conteudo do template (.json.rendered) e converte em um arquivo com local.file_ext (nesse caso .zip)