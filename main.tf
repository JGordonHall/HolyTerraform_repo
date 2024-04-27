terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.26.0"
    }
  }
}

provider "google" {
# Configuration options
project = "homework-labs-420322"
region = "southamerica-east1"
credentials = "homework-labs-420322-f89e55211153.json"
zone = "southamerica-east1-b" 
}


resource "google_storage_bucket" "static-site" {
  name          = "misterbucket-88"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }

}