resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_bucket_object" "this" {
    bucket = aws_s3_bucket_object.this.bucket

    key = "teste/${local.teste_filepath}" # onde vai ser salvo dentro do bucket

    source = local.teste_filepath # onde está armazenado na máquina

    etag = filemd5(local.teste_filepath) # para verificar quando ocorrer alteração no arquivo
}
