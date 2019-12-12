# Session 2

In this session, we'll cover the following concepts: 
  * Navigating commit history 
  * Best practices 
  * .gitignore
  * GitHub features 
  * Markdown vs Wiki

Following the conceptual overview, we'll work through 2 examples together (in RStudio) and an exercise at the end of the session. 

## Example 1: 

Open up RStudio and excute the following commands from the terminal within RStudio itself.

```shell
# In your preferred directory create a new directory
mkdir session2 

# make it a git repository
git init 

# create an empty r script
touch test.r 

git status 

```

### understanding .gitignore

Set the working directory to the `session2` repo we created above.  

RStudio console command: `setwd('~/Desktop/session2')`

Edit the `test.R` script to include the following lines of code.

```r
# assigning variables
a <- 10
b <- 20

# addition
add = a + b
print(add)

```
Source and run the code within RStudio. 

Now, let's close our RStudio session and when prompted save the session before closing. 

Reopen RStudio. If it doesn't resume your previous session then set your working directory to `session2` repo again. 

```shell
# list all files 
ls -a 

git status 
```

You should see a list of .RHistory and other session files that are currently untracked. 

These files are relevant only to the user of the local machine. Tracking these files would be a bad practice because: 
  * waste of disk space
  
  * We want the commit history to be as relevant and crisp as possible so that when we need to go back in time, we can see *only the most relevant* differences between our HEAD (most recent commit) and one of the previous commits. 
   
  * If I'm collaborating with others and I commit and push *my* backup files, each time someone else pulls the repo into their local, they'll have to deal with merge conflicts (more in the next session)

There could be other scenarios where tracking certain files might be both unnecessary and a potential security risk. E.g., tracking and pushing PII data. 

So how do we make sure we don't track these files with git but be able to access it for our individual purposes? 

Enter `.gitignore` ! *drum rolls*

The `.gitignore` file tells Git what files to ignore.

Filenames,directories and other path patterns listed in the `.gitignore` file are ignored by git, meaning they aren't tracked and therefore, doesn't get staged, committed or pushed each time you execute respective git commands. 

```shell

# create a .gitignore file
touch .gitignore

# open it up in RStudio and add the R related session filenames
# .RData    
# .Rhistory

git status
```

Add and commit these changes. 

Why track .gitignore files? Others pulling the repository might also want to ignore the same files. 

### creating a chain of commits

Add few more lines of code. 

```r
# subtraction
sub = a - b
print(sub)

# multiplication
mul = a*b
print(mul)

# division
div = b/a
print(div)

```

Add and commit. Make sure to type in descriptive commit messages.

Again, edit `test.r`. This time delete the division operation. 

Add and commit. 

Edit it one last time and remove the comments. And, you guessed it, add and commit! 


### seeing differences between commits

```shell
git log 

# you should be able to see 4 commits in reverse chronological order
```

Let's try out a couple of variants of the `git diff` command. 

```
git diff HEAD test.r
git diff HEAD <first commit ID> 
git diff <first commit ID> <second commit ID>
```

Reverting the file `test.r` to a fully commented and complete version of the script. 

```
git checkout <commit ID> 
```

To get out of the detached HEAD state `git checkout master`

*Correct checkout command requires filename along with the commit ID.* 

```
git checkout <commit ID> test.r 

# now the file is back to a previous version. If you decide to keep this version, then add and commit it. 
# This will show up as a new commit in the commit history
# If its not committed, then the change (i.e., going back to previous version of test.r won't be recorded)
git add -A 

git commit -m "reverting back to previous version of test.r" 

git log
```

## Example 2: 

1. Fork the `git-training` repo from https://github.com/nih-fmrif/git-training/

2. Clone it down to your local machine 
`git clone <repository url> ` 

3. Find the `calc.R` file within your local copy of the repository in RStudio

4. Go to your GitHub (not local copy) `git-training` repository 

5. Edit the README.md associated with the `R` directory on GitHub.
`# Documentation for calc.R`

6. Commit and see the changes rendered. 

7. In a new tab on your RStudio editor, open the README.md file within the `R` directory. What do you notice? 

8. `git pull origin` to pull down the changes made on remote

9. Edit the README.md

10. Add, commit and push the changes to remote

## Exercise

1. Fork the repo from https://github.com/Arshitha/session2-exercise/
2. Clone it down to your local machine 
3. Run the `even.R` code in RStudio and close RStudio. (Don't forget to set your `session2-exercise` directory as your working directory in RStudio) 
4. Create `.gitignore` file and add the following: 
  * .RHistory and other session files 
  * `random1.txt`, `random2.txt` and `random3.txt` without typing the filenames individually. (HINT: Use wildcards)
  * `dontCare` directory 
5. `git status` to verify if all the files listed above are ignored. If yes, add and commit the `.gitignore` file. 
6. Inside the `dontCare/` directory, create a new file named `random4.txt` and make sure it's being tracked. (HINT: It won't be tracked since the folder `dontCare/` is in `.gitignore`) How do you track only `random4.txt`? Try to google it or ask one of us. You might find some help here too: https://swcarpentry.github.io/git-novice/06-ignore/index.html
7. Create a chain of commits. Make some trivial edits to the `even.R` create a chain of commits so that you can later use to go and back forth in the commit history. 
8. Revert back to the original `even.R` code without any of the edits you made. Looks as follows:
```r
# list of integers from 1 to 10
a <- (1:10)

# printing even numbers
for (each in a){
  if(each %% 2 == 0){
    print(paste0("Here is an even integer: ", each))
  }
}
```
9. Push the changes to remote. 
10. Document the code in the README.md on your GitHub account. 
11. Pull down the changes to your local repository. 








