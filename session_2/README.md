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

Set the working directory to the `session2` repo we created above.  

RStudio console command: `setwd('/Desktop/session2')`

Edit the `test.R` script to include the following lines of code.

```r
# assigning variables
a <- 10
b <- 20

# addition
add = a + b
print(add)

```

Now, let's close our RStudio session and when prompted save the session before closing. 

Reopen RStudio. If it doesn't resume your previous session then set your working directory to `session2` repo again. 

```shell
# list all files 
ls -a 

git status 
```

You should see a list of .RHistory and other session files that are currently untracked. 

These files are relevant only to the user of the local machine. If we track this, then all of our subsequent commits will contain these files even though they aren't relevant to the project itself and that's bad practice because: 
	* As the project grows, we want the commit history to be as succinct as possible so that we can go back and forth without having to sort through irrelevant commits  
	* If we are collaborating with others and if I commit and pushes my metadata, each time someone else pulls the repo into their local, there'll be merge conflicts (more in the next session)

There could be other scenarios where tracking certain files might be both unnecessary and a potential risk. E.g., tracking and pushing PII data. 

So how do we make sure we don't track these files with git but be able to access it for our individual purposes? 

Use the .gitignore. 

Files and directories listed in the .gitignore file are ignored by git, meaning they aren't tracked and therefore, doesn't get staged, committed or pushed each time you execute those git commands. 

```shell

# create a .gitignore file
touch .gitignore

# open it up in RStudio and add the R related session filenames
# .RData    
# .Rhistory

git status
```

Add and commit these changes. 

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

```shell
git log 

# you should be able to see 4 commits in reverse chronological order
```

Let's try out a couple of variants of the `git diff` command. 

```
git diff HEAD <first commit ID> 
git diff <first commit ID> <second commit ID>

```

Reverting the file `test.r` to a previous version.

```
git checkout <commit ID> 
```

To get out of the DETACHED HEAD state `git checkout master`

Correct checkout command requires filename along with the commit ID. 

```
git checkout <commit ID> <filename> 
``` 







