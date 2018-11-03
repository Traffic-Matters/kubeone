output "api" {
  value = {
    endpoint = "${aws_lb.control_plane.dns_name}"
  }
}

output "hosts" {
  value = {
    control_planes = {
      public_address  = "${aws_instance.control_plane.*.public_ip}"
      private_address = "${aws_instance.control_plane.*.private_ip}"
      user           = "ubuntu"
      ssh_key_file   = "${var.ssh_key_file}"
    }
  }
}
