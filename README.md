🚀 Instructions for Deployment
📌 Prerequisites
✅ Install Terraform

```
brew install terraform
terraform version
```

✅ Install Azure CLI
```
brew install azure-cli
az login
```
Make sure you have an Azure subscription and valid credentials configured.

🗂️ Create Directory Structure
```
mkdir -p terraform-azure-keyvault-storage/modules/ terraform-azure-keyvault-storage/modules/storage_account
cd terraform-azure-keyvault-storage
```

Save the Terraform module and example files in the respective directories:

modules/ for reusable module

Root directory or examples/ for implementation

🧪 Test Locally
1. Initialize Terraform

```
terraform init

```
2. Validate Configuration

```
terraform validate
```
3. Plan Deployment
```
terraform plan -var="env=dev"
```
4. Apply (Optional, for testing)
```
terraform apply -var="env=dev" -auto-approve
```
🌐 Push to GitHub
Create a Public Repository
```
git init
git add .
git commit -m "Terraform module for Azure Key Vault and Storage Account"
git remote add origin https://github.com/iptv-cloud/terraform-azure-keyvault-storage.git
git push -u origin main
```
If the repository doesn’t exist yet:

Go to https://github.com

Click “New repository”

Set to Public

Name it: terraform-azure-keyvault-storage 

Follow GitHub prompts to connect and push your local code.

✅ Verify Push
Ensure files are pushed to the main branch:

```
git ls-tree -r main --name-only
```