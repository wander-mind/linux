### **Configure Git with Username and Email:**

```bash
$ git config --global user.name "YourUsername"
$ git config --global user.email "your.email@example.com"
```

### **Check Configuration:**

```bash
$ git config --global --list
```

### Git Credentials

To avoid entering your personal access token every time you perform a Git operation, you can configure Git to store your credentials securely. Here’s how you can do it:

```bash
$ git config --global credential.helper store #This command configures Git to store your credentials in plaintext in a .git-credentials file in your home directory. Note that this method is not the most secure because the credentials are stored in plaintext.
```

The next time you perform a Git operation that requires authentication (such as git push or git pull), Git will prompt you for your username and personal access token. Enter them, and Git will store them for future use.

### Cloning Repository:

```bash
$ cd your-repo-location-onPC
$ git clone https://github.com/yourusername/your-repo.git
```

### Making Changes (The trio of commands):

(Replace `main` with your branch name if it's different)

```bash
$ git add .                             # Stage changes
$ git commit -m "Your commit message"   # Commit changes
$ git push origin main                  # Push Changes to GitHub
```

### Pulling Changes:
```bash
$ git pull origin main # Replace `main` with the branch you are working on.
```

If you want to pull changes from the remote repository and include files that are listed in your `.gitignore` file (i.e., files that were previously ignored), you can use the following steps:

1. **Clean Untracked Files:**

- Before pulling changes, you may want to clean any untracked files in your working directory. Be careful with this step, as it will permanently delete untracked files.

```bash
$ git clean -dfX
```
- `-d`: Allow removal of directories.
- `-f`: Force the clean operation.
- `-X`: Only clean files that are listed in `.gitignore`.

2. **Pull Changes:**

- After cleaning untracked files, you can pull changes from the remote repository.

```bash
$ git pull origin main # Replace `main` with the branch you are working on.
```

3. **Handle Merge Conflicts (if any):**

- If there are merge conflicts during the pull, Git will notify you. Resolve the conflicts manually and then complete the merge using:

```bash
$ git merge --continue
```

- Alternatively, you can use a tool like `git mergetool` to assist with conflict resolution.

Please be cautious when using `git clean` as it permanently deletes untracked files. Make sure you have backups or a way to recover important files if needed.

Additionally, remember that the files listed in `.gitignore` are ignored by Git for version control purposes. Pulling changes will not add these files to version control unless you explicitly stage and commit them.

### Summary:

- **Log in:** You don't need to log in every time you open Git Bash. Git will use the credentials stored on your machine. If you have 2FA enabled, you might need a personal access token.
    
- **Syncing:** The `git pull` and `git push` commands are used to sync your local repository with the remote repository on GitHub.
    
- **Ignore Rules:** The `.gitignore` file is automatically considered by Git. If files or folders are specified in `.gitignore`, Git will skip tracking them.
    

Please adjust the commands based on your repository's specifics. If you have 2FA enabled on GitHub, use a personal access token instead of your GitHub password.
