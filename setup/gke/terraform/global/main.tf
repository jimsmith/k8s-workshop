provider "google" {
  credentials = "${file("terraform-iam.json")}"
  project = "${var.project}"
}

resource "google_project_iam_binding" "iam_setup" {
  count = "${length(var.users)}"
  project = "${var.project}"
  role = "projects/${var.project}/roles/${google_project_iam_custom_role.k8s-wokshop-custom-role.role_id}"
  members = [
   "${element(var.users, count.index)}"
]
}

resource "google_project_iam_custom_role" "k8s-wokshop-custom-role" {
 role_id = "k8s-wokshop-oct-3"
 title = "k8s-workshop-contino"
 permissions = ["${var.permissions}"]
 project = "${var.project}"
}
