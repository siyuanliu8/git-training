# Session 1

In this session we go over the concepts of version control and in particular, git. We'll also work through an example and an exercise below.  

Ether pad link: https://pad.carpentries.org/nih-git-2019-12

## Example: 

### git Command structure
`git verb options`

* `verb` : action that you want git to perform
* `options` : more specific options for the action to be performed

### git config --global

``` 
git config --global user.name "Arshitha B" 
git config --global user.email "arsh2794@gmail.com"
```

**--global = all git projects**

* These settings (or configs) make sure that every commit across every git project will have the above username and email
* GitHub is the git hosting service we'll be using so the user.email should be the email with which you signed up for git

### creating local repository
```shell
# creating a directory on the desktop
cd ~/Desktop 
mkdir sample
cd sample
ls -a
```
* Right now this is just another directory on my desktop. How do I make this a repo?

```shell
git init 
ls -a 
```

* .git sub-directory within the directory is what makes it a repository 

### creating a new file and tracking it with git
```shell
touch myNewFile.txt 
echo 'Hello, world!' > myNewFile.txt

# checking which files are tracked and which aren't
git status 

# adding a file to the staging area 
git add myNewFile.txt 

git status 

# commiting the file 
git commit -m "test file commit" 

git status

vi myNewFile.txt 
# add 2 new lines of text 

# differences made after the last commit
git diff 

git status

git add myNewFile.txt 

git commit -m "adding two new lines" 
```

### creating a remote repo and pushing the changes to remote
1. create an account on github.com, if you don't already have one. 
2. login to your github account 
3. create a new repository on github
  * it can be given a name different from the local 
  * however, good practice to be consistent in naming local and remote repositories 
  * don't add README.md or gitignore files
4. copy the HTTPS link 
5. push the repo from command line 

```shell
git remote add origin https://github.com/Arshitha/sample.git
git remote -v
git push -u origin master
```

* you can now see the changes you made locally on your github repository

### check the commits made so far
```shell
git log
```

### adding and editing README.md 
```shell
touch README.md
```
* README is a simple and brief documentation for other users to understand your project
* README and wikis are the two ways to document your work on GitHub. Wikis are for a more detailed and more technical documentation of your work. 
* README is, generally, found in the root directory of the repo. However, you can have one in every directory too. Like in this repo. 
* '.md' stands for markdown
* Markdown is lightweight markup language with plain text formatting syntax. We'll see what that means. 

More here: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

## Exercise: 
1. Create a directory on your desktop called 'first-repo'
2. Make it a git repository 
3. Create two files:
 * A text file (e.g. sample.txt)
 * A README file (e.g. README.md)
4. Edit the files using your text editor of choice 
5. Track and commit both files
6. Now, create a new repository on GitHub and push your local copy to remote (i.e., repo on GitHub). Verify on GitHub if the push was successful.
7. Create a new directory on the local repo called 'session_1'. Do you think you need to track this sub-directory separately? 

## Summary 
* git config 
* git init 
* git status
* git diff
* git add 
* git commit 
* git remote add 
* git remote -v 
* git push
* git log 
* editing README.md
