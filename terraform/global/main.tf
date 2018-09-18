provider "google" {
  credentials = "${file("terraform-iam.json")}"
  project = "${var.project}"
#  region = "${var.region}"
}

resource "google_project_iam_binding" "iam_setup" {
  count = "${length(var.users)}"
  project = "${var.project}"
  role = "roles/container.viewer"
  members = [
   "${element(var.users, count.index)}"
]
}
