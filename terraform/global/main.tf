provider "google" {
  credentials = "${file("terraform-iam.json")}"
  project = "${var.project}"
}

resource "google_project_iam_binding" "iam_setup" {
  count = "${length(var.users)}"
  project = "${var.project}"
  role = "${var.iam_role}"
  members = [
   "${element(var.users, count.index)}"
]
}
