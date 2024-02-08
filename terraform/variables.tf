variable "domain_name" {
  type        = string
  description = "The domain name of your website"
  default     = "example.com"
}

variable "www_domain_name" {
  type        = string
  description = "The domain name of your website with 'www' prefix"
  default     = "www.example.com"
}

variable "resume_bucket_name" {
  type        = string
  description = "The name of the S3 bucket for hosting the website content"
  default     = "YourBucketName"
}

variable "log_bucket_name" {
  type        = string
  description = "The name of the S3 bucket for storing logs"
  default     = "YourBucketName"
}