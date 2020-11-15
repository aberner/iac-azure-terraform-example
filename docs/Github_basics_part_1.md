## Part one: Github basics

Start from scratch, in the end you will end up with a development environment on your computer. Ready to deploy infrastructure.


1. **Fork this github project**
   - More info: [https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/fork-a-repo](How to fork a repo)
   - Fork the github project https://github.com/aberner/iac-azure-terraform-example/


**Result:**
```
   This will give you your own copy of this project
   It allows you to freely experiment with changes without affecting the original project.
```


2.  **Clone this project**
   - More info: [Cloning a repo](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
   - Remember to clone your own fork and NOT this project

**Result:**
```
    This will create a local copy on your computer and sync between the two locations
```

3.  **The files listed in .gitignore will not be added to git**
   - More info: [gitignore](https://git-scm.com/docs/gitignore)
   - Specifies intentionally untracked files to ignore
   - **Action:**   Create the file: terraform.tfvars 
   - This file will not be included in git because of .gitignore

 **example:** *terraform.tfvars*
```
#Define application name
app_name = "arb123"
```

4. **Open project in VS Code**
  - Simply use the build-in function in Github Desktop

5. **Do your changes and commit**
  - More info: [Git commit](https://github.com/git-guides/git-commit)
  - This will only commit you changes to your local clone of the project
  - **Remember** Always add a commit message describing the change

6. **Push your changes to github**
  - More info: [Git push](https://github.com/git-guides/git-push)
  - This uploads all local branch commits to the corresponding remote branch.

