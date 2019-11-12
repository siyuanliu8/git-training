# Session 1

## Example 1

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
```
# creating a directory on the desktop
cd ~/Desktop 
mkdir sample
cd sample
ls -a
```
* Right now this is just another directory on my desktop. How do I make this a repo?

```
git init 
ls -a 
```

* .git sub-directory within the directory is what makes it a repository 

### creating a new file and tracking it with git
```
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
```

### creating a remote repo and pushing the changes to remote
1. create an account on github.com, if you don't already have one. 
2. login to your github account 
3. create a new repository on github
..* it can be given a name different from the local 
..* however, good practice to be consistent in naming local and remote repositories 
..* don't add README.md or gitignore files
4. copy the HTTPS link 
5. push the repo from command line 

```
git remote add origin https://github.com/Arshitha/sample.git
git remote -v
git push -u origin master
```

* you can now see the changes you made locally on your github repository 











