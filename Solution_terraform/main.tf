provider "google" {
  credentials = "awagngxggcievs4jukm56y3voiyife-8994ae7444dc.json"
  project     = "awagngxggcievs4jukm56y3voiyife"
}
resource "google_container_cluster" "second" {
  name               = "my-gke-cluster"
  location           = "us-west2-a"
  initial_node_count = 1
}