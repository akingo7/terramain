output "s3-dev-endpoint" {
  value = module.s3-backend-app.dev_website_endpoint
}

output "s3-prod-endpoint" {
  value = module.s3-backend-app.dev_website_endpoint
}