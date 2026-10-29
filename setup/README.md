## 1. Which SSH Key must never be shared?


**Private key** is the key that one must not share (`~/.ssh/id_ed25519`).When someone gets it he or she will have access to the your github account or even the server.

## 2. What is the difference between `git commit` and `git push`?


| Git commands | Meaning |
|---|---|
| `Git commit` | saves changes to your local repository. |
| `Git push` | uploads your changes to your repo on github. |
###  What will you see on Github after only a `git commit`
You will not see any of the changes you made not until you have `git push`.


## 3. Why must files not to be saved directly in home directory?


To keep things neat and makes it easy to find what you are looking for. 
### Which commands show the work is tidy?
```bash
find ~ -maxdepth 1 -type f ! -name '.*'
```
It lists loose files directly in `~`,ignoring hidden files.Empty output means the directory is tidy.


## 4. Make your prompt show a `?`, then a arrow with a number deliberately.

To trigger both indicators in your terminal:
 1. Create a new untracked file: `touch scratch.txt` when you run this command the prompt show a `?` which means that there is a new file that git is not tracking.
 2. Stage a commit without pushing:
 `git add scratch.txt && git commit -m "Add scratch file"`
meaning that you need to upload your commit to the Github using `git push`. **The changes are only on your local repository.**

## 5. What does `ssh -T git@github.com`tell me?

```text
Hi jeronosheryl11-web! You've successfully authenticated, but GitHub does not provide shell access.
```
Github recognised my public key and knows who i am.it does not give a shell on its servers.

 ## 6. What is the difference between authentication and authorization?Using `scm.quatrixglobal.com` as the example, which one is your SSH key doing, and which one decides whether you can push to a given repo?

- **Authentication** vs **Authorization**:
     1. **Authentication**: verifies **who iam** in that my SSH key proves my identity  when i connect to the Git server.
     2. **Authorization**: is what im allowed to do  its like **permission**.

 - Using `scm.quatrixglobal.com`:
   
    1. **SSH key**: performs **authentication**.

     2. **Git repository permissions**: performs the **authorization** whether you can push to the repo.

## 7.Besides a password and an SSH key, name at least three other ways a system can authenticate a user. For each, say what it relies on: something you know, something you have, or something you are.

|Authentication method|Category|Relies on|
|---|---|---|
|One-time passcode|something you have|  relies on possession of a registered device|
|Pin|someting you know| relies on secret information known to the user |
|Fingerprint|something you are| relies on unique physical appearance used by mobile phones |


 ## 8.A git remote can be reached over SSH (git@scm.quatrixglobal.com:...) or over HTTPS ([https://scm.quatrixglobal.com/](https://scm.quatrixglobal.com/)...). How does authentication work in each case, and which would you pick for daily use and why?

 - **How SSH Authentication works**: uses an ssh keys .The public key is added to the Git server while the private key stays on your computer secrectly.

 - **How HTTPS
Authentication works**:
usually uses a username and personal access tokens instead of account password.

- **Which one will you pick and why**:

   - I would  prefer to use the **SSH Authentication** bacause once it has been configured there is no need to constanly  copy, paste or manage tokens.


## 9.. Run `git remote -v` in your `mentor` repo. Which of the two methods in question 8 is it using? What single command would switch it to the other?
- **Checking the remote**:Run `git remote -v`.It uses **SSH** because the URL starts with `gitgit@github.com:jeronosheryl11-web/quatrix-mentorship.git`.
- **Switching command**:Run ` git remote set-url origin git@scm.quatrixglobal.com:quatrix-education/quatrix-mentor.git` to switch

## My Personal Notes.

### How to do a git push
- stage your answers
   ```
   git add README.md
   ```
- commit your changes
   ```
   git commit -m "setup answers"
   ```
-push your changes
   ```
   git push
   ```
   