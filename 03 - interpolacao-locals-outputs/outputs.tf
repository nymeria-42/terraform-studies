output "bucket_name" {
    value = aws_s3_bucket.this.bucket
}

output "bucket_arn" {
    value = aws_s3_bucket.this.arn
    description = ""
}

output "bucket_domain_name" {
    value = aws_s3_bucket.this.domain_name
}

output "teste_filepath" {
    value = "${aws_s3_bucket.this.bucket}/aws_s3_bucket_object.this.key"
}
