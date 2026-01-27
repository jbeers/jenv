This is my personal system configuration repo.

I use this to store

* application settings
* scripts
* helpful tutorials

My dev environment includes

| Name          | Purpose                   |
|---------------|---------------------------|
| BoxLang       | Portable scripts          |
| Alacritty     | Terminal emulator         |
| Oh My Posh    | Shell decorations         |
| nvim          | IDE                       |

# Getting Started - As Automatic As I Can Make It

If mac/linux then run

```
bash script
```

If windows then run

```
ps script
```

# Getting Started - Manually

Pull the repo to `~/jenv`. Then you will need to run one of

```
# for bash/zsh on linux or mac
./setup-bash.sh

# or for powershell on windows
./setup-ps.ps1
```

This will 

* Install all applications
* Install supporting resources (fonts, etc...)
* Correctly configure everything
* Sets up shell init scripts with aliases/functions/etc...

Not all configuration can be handled via the script. Some of it needs to be done manually. The script will guide you with what you need to do.

# TODO

[x] setup repo
[ ] write bash script
[ ] write ps script
[ ] write BoxLang script
[ ] populate with additional utilities (docker, aliases, etc...)
