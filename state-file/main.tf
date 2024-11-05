terraform {
  backend "s3" {
    bucket = "yopappiyo"
    key    = "test/state-file"  ## this is the path we give of how things be store in this S3 bucket.
                                ##so this creates a folder "test/state-file" and in that the state file is copied.
    region = "us-east-1"
  }
}
