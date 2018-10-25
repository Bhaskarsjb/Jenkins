provider "aws" {
    shared_credentials_file = "${var.PATH_TO_CREDENTIAL}"
    region = "${var.AWS_REGION}"

}
