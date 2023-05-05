module "antimetal_role" {
  source = "antimetal/antimetal/aws"

  # Role name is a personal preference that suits best your needs.
  # It's used on Antimetal application to identify the account.
  role_name = "Development"

  # External ID should be random and securely generated.
  # DO NOT use this value, as its publicly available on this repository.
  external_id = "ynGu065M3Kee"
}
