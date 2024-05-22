# Kali linux ZSH completions

A few important notes:

* The files must be in one of the directories listed in `$fpath`. One such directory on Kali is `/usr/share/zsh/functions/Completion/Linux/`, to which I've chosen to install my completion files.
* Completion files must be look like `_<command>` and the main function inside must be similarly named.

## Install

```
sudo ./install.sh
```

## Completions

* `_gobuster` : simple gobuster use cases. wordlist completion assumes wordlists under /usr/share/wordlists/
  > For this completion to be optimal, you should install `SecLists` into `/usr/share/wordlists/`; I try to autocomplete subdomain lists for the dir and vhost 
    subcommands using the glob `**/*subdomains*txt`.

