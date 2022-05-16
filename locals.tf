locals {
  name = "base"
  tags = merge(
    var.tags,
    {
      env = var.environment
    }
  )
}