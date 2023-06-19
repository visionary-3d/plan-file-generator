<div align="center">

# <span style="color:#ffffff">**Plan File Generator**</span>
<span style="color:#66b7f5">**Automated plan file generation**</span> using <span style="color:#8151fb">*bash*</span>.
Every time you turn on [<span style="color:#24eb5f">your Operating System</span>](https://github.com/visionary-3d/plan-file-generator#run-setupsh-on-os-startup) it'll generate a new markdown file with the date as its name within a directory that gets created called `plans`.
And then it'll open that file with [<span style="color:#f3f628">your editor of choice</span>](https://github.com/visionary-3d/plan-file-generator#opening-text-editor).

### INSTALLATION
---
</div>

```bash
# Clone this repo somewhere and don't touch it
git clone https://github.com/visionary-3d/plan-file-generator.git

# allow running git commands from any directory
git config --global --add safe.directory '*'

# go inside the directory
cd plan-file-generator
```

### <span style="color:#24eb5f">Run **setup.sh** on OS startup</span>
### Windows :
Create a shortcut of the sh file by right clicking on `setup.sh` and selecting `Create Shortcut`.

Press `Win + R` to open up the `Run` application. Then type `shell:startup` and press OK.

Copy the shortcut and paste it in the `Startup` folder.

Now this file will run every time you turn on windows.
### Linux:
https://stackoverflow.com/questions/12973777/how-to-run-a-shell-script-at-startup
 
### Mac OS
https://stackoverflow.com/questions/6442364/running-script-upon-login-in-mac-os-x

### <span style="color:#f3f628">**OPENING TEXT EDITOR**
</span>
Change the final lines of the setup script.

### VsCode
```bash
code "./${file_name}"
```
### VsCode With WSL
```bash
wsl code ./
wsl code "./${file_name}"
```
### VIM
```bash
vim "./${file_name}"
```