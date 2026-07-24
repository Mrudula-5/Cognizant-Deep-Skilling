# Git Ignore Hands-on

## Objective

To understand and implement the `.gitignore` file in Git for ignoring unwanted files and folders from version control.

---

## Description

In this hands-on, a `.gitignore` file is created to prevent Git from tracking:

- All files with the `.log` extension
- The `logs` directory

This helps keep unnecessary files out of the Git repository.

---

## Files Used

```
2.Git-HOL
│
├── .gitignore
├── README.md
├── welcome.txt
├── app.log
├── error.log
└── logs/
    └── test.txt
```

> **Note:** `app.log`, `error.log`, and the `logs/` folder are ignored by Git using `.gitignore`.

---

## .gitignore Content

```text
*.log
logs/
```

---

## Git Commands Used

### Initialize Repository

```bash
git init
```

### Check Status

```bash
git status
```

### Stage Files

```bash
git add .
```

### Commit Changes

```bash
git commit -m "Implemented Git Ignore hands-on"
```

### Push to GitHub

```bash
git push origin main
```

---

## Expected Result

- `.log` files are ignored.
- `logs/` folder is ignored.
- Only required project files are tracked by Git.

---

## Concepts Covered

- Git Ignore (`.gitignore`)
- Ignoring Files
- Ignoring Directories
- Git Status
- Git Add
- Git Commit
- Git Push

---

## Learning Outcome

After completing this hands-on, I learned how to:

- Create and configure a `.gitignore` file.
- Ignore specific file types using wildcards.
- Ignore complete directories.
- Verify ignored files using `git status`.
- Track only required files in a Git repository.

---

## Author

**Mrudula Arun Sonawane**
