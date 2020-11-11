## Part one: Github basics

1. **Fork this github project**
   - More info: [https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/fork-a-repo](How to fork a repo)
   - Fork the github project https://github.com/aberner/iac-azure-terraform-example/


```
   `**`Result:`**` This will give you your own copy of this project
   It allows you to freely experiment with changes without affecting the original project.
```


2.  **Clone this project**
   - More info: [https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/cloning-a-repository](Cloning a repo)
   - Remember to clone your own fork and NOT this project

```
   `**`Result:`**` This will create a local copy on your computer and sync between the two locations
```

3.  **The files listed in .gitignore will not be added to git**
   - More info: [https://git-scm.com/docs/gitignore](gitignore)
   - Specifies intentionally untracked files to ignore
   - **Action:**   Create the file: terraform.tfvars 
   - This file will not be included in git because of .gitignore

 
#### example terraform.tfvars

```
#Define application name
app_name = "arb123"
```


