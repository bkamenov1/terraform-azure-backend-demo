# Terraform Remote Backend on Azure

This project sets up a **Terraform remote backend** using **Azure Storage**, enabling state management in a centralized and secure manner. Remote backends help teams collaborate more effectively and avoid conflicts during infrastructure provisioning.

## 🧰 Project Files

| File                  | Description                                                   |
|-----------------------|---------------------------------------------------------------|
| `.gitignore`          | Specifies intentionally untracked files to ignore             |
| `.terraform.lock.hcl` | Dependency lock file for Terraform providers                  |
| `backend.tf`          | Defines the remote backend configuration using Azure Storage  |
| `main.tf`             | Placeholder for future infrastructure code                    |
| `provider.tf`         | Specifies the required provider(s), e.g., azurerm             |
| `variables.tf`        | Input variable definitions                                    |
| `terraform.tfstate.backup` | Local backup of Terraform state (auto-generated)         |
| `secrets.txt`         | **Should be removed or secured** — avoid committing secrets   |
| `Untitled-1.sh`       | Previously included secrets — now removed (cleaned)           |


