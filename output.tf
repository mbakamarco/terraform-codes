output "user-arn" {
  value = aws_iam_user.serge_user.arn
}

output "group-arn" {
  value = aws_iam_group.security_group.arn
}

output "group-id" {
  value = aws_iam_group.security_group.id
}


output "username" {
  value = aws_iam_user.serge_user.name
}

output "membership" {
  value = aws_iam_group_membership.serge_membership.users

}
