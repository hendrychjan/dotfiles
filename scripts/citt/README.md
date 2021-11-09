# citt
- extract text from a screenshot

### Installation
- first, install following dependencies with package manager of your choice:
```
flameshot
gocr
```
- then, download the ```citt.sh``` file from here and put it anywhere you want
- make it executable:
```
sudo chmod +x ./citt.sh
```

### Usage
**Syntax:**
```
./citt.sh <working_dir>
```

> **working_dir** 
> - an absolute (**do not use relative**, like "../something") path to where temporary png file will be created during the script execution
> - this has to be an empty folder with just the ```citt.sh``` script, otherwise it won't work
> - also, **do not** put a slash at the end (example: /path -> correct; /path/ -> illegal!!)

**Example:**
```
./citt /home/jennie/scripts/citt
```
1. take a screenshot using flameshot
2. choose the **save** option in flameshot
3. image is analyzed, text put into your clipboard - use it with ```ctrl+v```

> I encourage you to first try this script out in terminal. Then you can bind it to a keyboard shortcut ( ͡~ ͜ʖ ͡° )
