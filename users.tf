# Create IAM users "serge", "bruno" and "marc"
resource "aws_iam_user" "serge_user" {
  name = "serge"
}

resource "aws_iam_user" "bruno_user" {
  name = "bruno"
}

resource "aws_iam_user" "marc_user" {
  name = "marc"
  tags = {
    team                = "Devops"
    owner               = "marc"
    email               = "marco@gmail.com"
    create_by_terraform = "yes"
  }
}
