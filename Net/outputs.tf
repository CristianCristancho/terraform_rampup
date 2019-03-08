output "private_subnet" {
  value = ["${aws_subnet.private-subnet.*.id}"]
}

output "public_subnet" {
  value = ["${aws_subnet.public-subnet.*.id}"]
}

output "jenkins_subnet" {
  value = ["${aws_subnet.jenkins-subnet.*.id}"]
}

output "SGFront" {
  value = ["${aws_security_group.FrontEnd.*.id}"]
}

output "SGBack" {
  value = ["${aws_security_group.BackEnd.*.id}"]
}

output "SGJenk" {
  value = ["${aws_security_group.jenkins.*.id}"]
}

