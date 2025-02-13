# Contributing to Terraform Repository

Thank you for contributing to this repository! To ensure high-quality changes and maintain stability, we enforce a **Pull Request (PR) workflow** where all changes must be reviewed and approved before merging into the `main` branch.

---

## 🛠️ **Branching Strategy**
- The **`main` branch is protected** and **direct commits are not allowed**.
- Contributors should **create branches** from `main` and submit a **Pull Request (PR)** for review.
- Use the following branch naming conventions:
  - **Feature Branches**: `feature/<short-description>`
  - **Bug Fixes**: `fix/<short-description>`
  - **Hotfixes** (urgent fixes in `main`): `hotfix/<short-description>`
  - **Documentation Updates**: `docs/<short-description>`

---

## 🚀 **Workflow for Making Changes**
### 1️⃣ **Clone the Repository** 
  ```sh
  git clone https://github.com/ontargetcomputing/terraform-root.git
  cd terraform-root   RDB FIXME
  ```

### 2️⃣ **Create a New Branch**
 ```sh
  git checkout -b feature/my-new-feature
  ```

  Replace feature/my-new-feature with a meaningful branch name.

### 3️⃣ **Make Your Changes**

  * Modify Terraform files.
	* Ensure changes do not break existing functionality.
	* Run terraform fmt to format the code.

### 4️⃣ **Commit Your Changes**
```sh
  git add .
  git commit -m "Added a new feature for XYZ"
```

### 5️⃣ **Push Your Branch to GitHub**
```sh
  git push origin feature/my-new-feature
```

### 6️⃣ **Open a Pull Request**

  1. Go to GitHub → Repository → Pull Requests.
  
  1. Click “New Pull Request”.
	
  3.	Select main as the base branch and your branch as the compare branch.
	
  4.	Fill in the PR title and description.
	
  5.	Request a reviewer.

### 7️⃣ **Code Review Process**

	* A team member will review your PR for:
	
    * Correctness
    
    * Security best practices
    
    * Code quality and style
	
  1. If changes are requested, update your branch:
  ```sh
  git add .
git commit --amend --no-edit
git push --force
```

### 8️⃣ **Merge the PR**

  * Once approved, merge the PR.
	
  * The PR must pass all automated checks (GitHub Actions, Terraform validation).
	
  * The PR should follow the “Squash and Merge” policy.

  🛑 Protected Branches

The main branch has the following protections:
✅ Direct pushes are blocked – All changes must go through a PR.
✅ At least 1 approval is required before merging.
✅ Status checks (Terraform validation, linting) must pass before merging.

✅ Best Practices
  * Write clear commit messages describing the changes.
  * Test Terraform changes using:
```sh
  terraform plan
```
  * Format code before pushing:
```sh
  terraform fmt
```  
  * Use descriptive PR titles and detailed descriptions.
  * Do not commit sensitive information (secrets, AWS credentials, API keys).