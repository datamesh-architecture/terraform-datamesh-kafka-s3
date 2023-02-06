variable "aws" {
  type = object({
    region     = string
    access_key = string
    secret_key = string
  })
  sensitive = true
}

variable "confluent" {
  type = object({
    cloud_api_key    = string
    cloud_api_secret = string
  })
  sensitive = true
}

variable "kafka_api_credentials" {
  type = object({
    api_key_id     = string
    api_key_secret = string
  })
  sensitive = true
}

variable "kafka" {
  type = object({
    environment = object({
      id = string
    })
    cluster = object({
      id            = string
      api_version   = string
      kind          = string
      rest_endpoint = string
    })
  })
}

variable "glue_catalog_database" {
  type = object({
    name       = string
    catalog_id = string
  })
}

variable "domain" {
  type = string
  description = "The domain of the data product"
}

variable "name" {
  type = string
  description = "The name of the data product"
}

variable "input" {
  type = list(object({
    topic      = string
    format     = string
    table_name = string
    schema     = string
  }))
}