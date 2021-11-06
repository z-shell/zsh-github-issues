# `ZSH-GITHUB-ISSUES`

Subscribe to your projects of interest on Github and receive **within shell** (under
prompt) notifications about new issues and pull requests.

# Usage

The tool currently needs Zsh and [zplugin](https://github.com/z-shell/zinit).

## Manual ice-specifying

The notificator load:
```zsh
zinit ice lucid id-as'GitHub-notify' \
        ice on-update-of'~/.cache/zsh-github-issues/new_titles.log' \
        notify'New issue: $NOTIFY_MESSAGE'
zinit light z-shell/zsh-github-issues
```

Background daemon load (it pulls the issues, by default every 2 minutes):
```zsh
# GIT stands for 'Github Issue Tracker', the future name of the project
GIT_PROJECTS=z-shell/zsh-github-issues:z-shell/zinit

zinit ice service"GIT" pick"zsh-github-issues.service.zsh" wait'2' lucid
zinit light z-shell/zsh-github-issues
```

## Pulling ices from the Zinit packages

Recent Zplugin supports packages which hold the needed ices. To install the plugin from
them, issue:

```zsh
zinit pack for @github-issues
zinit pack for @github-issues-srv
```

# Screenshot

![screenshot](https://raw.githubusercontent.com/z-shell/zsh-github-issues/main/img/git.png)
<!-- vim:set tw=89: -->
