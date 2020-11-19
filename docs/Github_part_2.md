# Github - Part two - collaborate using github!

In this lesson we will start to use branches, merge and send pull requests.
This is needed to collaborate with others on Github.

---

### Github branch: The basics
   - Branching is the way to work on different versions of a repository at one time. By default your repository has one branch named ```main```
   - ```main``` should always represent the state in production, ergo all changes should be made on separte feature branches
   - 2 min introduction to branches: [GitHub & Git Foundations: Branch (youtube)](https://www.youtube.com/watch?v=H5GJfcp3p4Q&list=PL0lo9MOBetEHhfG9vJzVCTiDYcbhAiEqL&index=2)

**Exercise:**
   1. Choose: "New Branch" in Github Desktop, name: ```adding-sqlserver```
   1. You now get the choice between: ```Leave my changes on main``` or ```Bring my changes to adding-sqlserver```, choose ```Leave my changes on main```
   1. Now Publish your new branch to GitHub
   1. Do a code change, see example below
   1. Commit and push your changes to Github

**Result:**
```
    This will create a new branch in your repository where your new changes will live.
    The Main-branch will exist untouched and represent your production state.
```

### Example code change
   - Here is an example you can implement on your new feature branch: [Example: Adding a SQL server resource](Terraform_example_2.html)

### Github Pull requests. The basics
   - Pull Requests are the heart of collaboration on GitHub. 
   - When you open a pull request, you’re proposing your changes and requesting that your change will be reviewed and merged into the target branch
   - More info: https://docs.github.com/articles/using-pull-requests

**Exercise:**
   1. Go to your project on https://github.com and choose ```Pull requests```
   1. The list should be empty, so start with ```New pull request```
   1. In this first step you compare the changes and Github analysis if it's able to merge the two branches automatically 
      1. First choose where you want the changes to end up, your target branch
      1. Then choose where your changes are stored now
      1. When you have reviewed the changes and Github has confirmed that this merged can be done automatically, your ready for the next step.
   1. The next step is creating the Pull request
      1. Here you can assign Reviewers and other project specific details about your change, before creating it
      1. Now the task of reviewing and acception the change should be given to a co-worker
   1. You finish the Pull request with either just ```Closing the request``` without accepting the request or ```merge pull request``` if you accept it
      1. It is in this step all automatic integrationtests should be done
   1. ```Delete branch``` is an recommended option that you have after merging is done
      - It is normal to keep a feature branch clean and only implement one feature on it before merging. In these cases you should always delete your branch.
      - Without deleting old feature branches you will end up with a lot of branches (chaos)
      - Yes, you could have end up with a bugfix for your new feature, but then that should also be it's own branch.


Note: If you need to, you can also compare across forks. 

**Result:**
```
    All your changes are now moved to your target branch and the Pull request is closed.
```

# More information

- https://www.youtube.com/githubguides
- https://guides.github.com/
