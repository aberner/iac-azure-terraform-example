## Part one: Github basics

- Fork this github project
   - More info: [https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/fork-a-repo](How to fork a repo)
   - Fork the github project https://github.com/aberner/iac-azure-terraform-example/
   
{% tip %}
   **Result:** This will give you your own copy of this project
   It allows you to freely experiment with changes without affecting the original project.

{% endtip %}


- Clone this project
   - This will give you a copy of this project on your computer
- The files listed in .gitignore will not be added to git
   - Create the file: terraform.tfvars 
   - This file will not be included in git because of .gitignore



 
#### example terraform.tfvars
```
#Define application name
app_name = "arb123"
```

