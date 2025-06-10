# GitHub Repo Owner Lookup Script

This Bash script uses the GitHub API to fetch the **owner login** of a specified repository.

---

## 🚀 Features

- Uses `curl` with GitHub authentication (via personal access token)
- Parses JSON response using `jq`
- Validates user input
- Secure (reads credentials from environment variables)

---

## 🧰 Requirements

- Bash (Linux/macOS/WSL)
- `curl`
- [`jq`](https://stedolan.github.io/jq/) (Install with: `sudo apt install jq` or `brew install jq`)

---

## 🔐 Setup

1. Create a **GitHub Personal Access Token**:
   - Visit: https://github.com/settings/tokens
   - Generate a token with at least `repo` scope (or `public_repo` for public repos)

2. Export your GitHub credentials to environment variables:
   ```bash
   export Username=your-github-username
   export Token=your-personal-access-token

## 📝 Usage
  
  ./github.sh \<repository-name>
  
  ---


