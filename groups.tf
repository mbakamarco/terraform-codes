# Create an IAM group named "security"
resource "aws_iam_group" "security_group" {
  name = "security"
}
# Add users "serge" and "bruno" to the group "security"
resource "aws_iam_group_membership" "serge_membership" {
  name  = aws_iam_user.serge_user.name
  users = [aws_iam_user.serge_user.name]
  group = aws_iam_group.security_group.name
}
resource "aws_iam_group_membership" "bruno_membership" {
  name  = aws_iam_user.bruno_user.name
  users = [aws_iam_user.bruno_user.name]
  group = aws_iam_group.security_group.name
}
# Create an IAM group named "manager"
resource "aws_iam_group" "manager_group" {
  name = "manager"
}
# Add user "marc" to groups "manager" and "security"
resource "aws_iam_group_membership" "marc_manager_membership" {
  name  = aws_iam_user.marc_user.name
  users = [aws_iam_user.marc_user.name]
  group = aws_iam_group.manager_group.name
}
resource "aws_iam_group_membership" "marc_security_membership" {
  name  = aws_iam_user.marc_user.name
  users = [aws_iam_user.marc_user.name]
  group = aws_iam_group.security_group.name
}