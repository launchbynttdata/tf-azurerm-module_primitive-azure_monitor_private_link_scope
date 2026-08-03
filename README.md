# tf-azurerm-module_primitive-azure_monitor_private_link_scope

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/License-CC_BY--NC--ND_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-nd/4.0/)

## Overview

This module deploys an Azure Monitor Private Link Scope. It can be used with private endpoints and private DNS zones to keep Azure Monitor telemetry traffic on a private network.

## Usage

See [examples/with_app_insights](examples/with_app_insights) for a scope linked to Application Insights and [examples/with_no_resources](examples/with_no_resources) for a scope without linked resources.

## Module Development

### Pre-Requisites

The following commands should be available on your system:

- `asdf` or `mise`
- `make`
- `python3` (for pre-commit)
- Azure CLI

Additionally, your `git` user and email must be configured. Run `make configure` from the repository root to ensure that you meet these requirements.

### Pre-Commit hooks

The [.pre-commit-config.yaml](.pre-commit-config.yaml) file defines hooks for Terraform formatting, validation, documentation generation, readonly-test wiring, and secret detection. Hooks are installed when you run `make configure`. Go linting runs through `make lint` locally and in CI.

### Terratest examples

Functional tests iterate through both example directories. The readonly test explicitly targets `examples/with_app_insights` and uses the non-destructive test runner.

### Local Validation

Validate module changes locally before pushing them to GitHub:

1. Run `make configure` successfully.
2. Sign in to the appropriate Azure subscription and ensure the test identity can create and delete the example resources.
3. Run the Terraform and Go linters:

```shell
make lint
```

4. Run the integration tests, which apply, test, and destroy real Azure resources:

```shell
make test
```

Pre-commit validation, `make lint`, and `make test` also run in CI.

### Review & Merge Process

Open a pull request to the default (`main`) branch. The PR title must follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/#specification) format to merge and drive semantic versioning.

Ensure CI workflows pass, address review feedback, and obtain the approvals required by `CODEOWNERS`.

### Automatic Updates

Shared configuration and workflow files are largely managed through [launch-terraform-skeleton](https://github.com/launchbynttdata/launch-terraform-skeleton). Avoid one-off edits to copied skeleton files unless necessary. Use `copier check-update` or `copier update` when refreshing from the skeleton.
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.77 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_private_link_scope.ampls](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_private_link_scope) | resource |
| [azurerm_monitor_private_link_scoped_service.service](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_private_link_scoped_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ingestion_access_mode"></a> [ingestion\_access\_mode](#input\_ingestion\_access\_mode) | The ingestion access mode for the Azure Monitor Private Link Scope. | `string` | `null` | no |
| <a name="input_linked_resource_ids"></a> [linked\_resource\_ids](#input\_linked\_resource\_ids) | Map of resources to associate with the Private Link Scope | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Private Link Scope | `string` | n/a | yes |
| <a name="input_query_access_mode"></a> [query\_access\_mode](#input\_query\_access\_mode) | The query access mode for the Azure Monitor Private Link Scope. | `string` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource group name | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Custom tags for the Private Link Scope | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_link_scope_id"></a> [private\_link\_scope\_id](#output\_private\_link\_scope\_id) | The resource ID of the Azure Monitor Private Link Scope. |
| <a name="output_private_link_scope_name"></a> [private\_link\_scope\_name](#output\_private\_link\_scope\_name) | The name of the Azure Monitor Private Link Scope. |
| <a name="output_private_link_scoped_service_ids"></a> [private\_link\_scoped\_service\_ids](#output\_private\_link\_scoped\_service\_ids) | The resource IDs of services linked to the Azure Monitor Private Link Scope. |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The name of the resource group containing the Azure Monitor Private Link Scope. |
<!-- END_TF_DOCS -->
