provider "google" {
credentials = '${{ secrets.GCP_SERVICE_ACCOUNT_KEY }}'
project = "ac-shared-playground"

region "us-central1"

}
