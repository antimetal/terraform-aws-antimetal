# Antimetal Terraform Connect

Antimetal provides a custom [Terraform module](https://registry.terraform.io/modules/antimetal/antimetal/aws/latest) that allows you to create your Antimetal Cross-Account IAM Role directly within your infrastructure management workflow.

TL;DR: copy the `role_arn` from the output and paste into [Connect Account using Terraform](https://app.antimetal.com/admin).

Connecting your account takes 2-3 minutes.
- Fully secure: Antimetal only has access to the billing layer of your AWS account. We do not access any sensitive data and will never require it.
- Non Invasive: We use a light IAM Role to analyze your AWS account. We cannot effect performance in any way.
- No Hidden Fees: Our savings analysis is 100% free.

## Usage

1. Copy the provided Terraform snippet. It should look similar to this:

```hcl
module "antimetal_role" {
  source = "antimetal/antimetal/aws"

  # Role name is a personal preference that suits best your needs.
  # It's used on Antimetal application to identify the account.
  role_name = "Development"

  # External ID should be random and securely generated.
  # DO NOT use this value, as its publicly available on this repository.
  external_id = "ynGu065M3Kee"
}
```

2. Add the snippet copied from the previous step into your existing Terraform configuration and run `terraform apply`.

3. Copy the `role_arn` output from the `terraform apply` step and paste it in the corresponding field on the Antimetal website.

### Example

This example creates an IAM Role in your account, giving read-only permissions to Antimetal's principal account (`042894766506`).

```console
git clone https://github.com/antimetal/terraform-aws-antimetal.git
cd terraform-aws-antimetal/examples/simple
terraform init
terraform plan
```

> Only Antimetal principal account can assume this newly created role. However, we recommend keeping `external_id` as a secret, creating a second layer of security.
