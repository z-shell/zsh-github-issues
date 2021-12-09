# `ZSH-GITHUB-ISSUES`

Subscribe to your projects of interest on Github and receive **within shell** (under
prompt) notifications about new issues and pull requests.

## Usage

The tool currently needs Zsh and [ZI](https://github.com/z-shell/zi).

## Manual ice-specifying

The notification load:

```zsh
zi ice lucid id-as'GitHub-notify' \
        ice on-update-of'~/.cache/zsh-github-issues/new_titles.log' \
        notify'New issue: $NOTIFY_MESSAGE'
zi light z-shell/zsh-github-issues
```

Background daemon load (it pulls the issues, by default every 2 minutes):

```zsh
# GIT stands for 'Github Issue Tracker', the future name of the project
GIT_PROJECTS=z-shell/zsh-github-issues:z-shell/zi

zi ice service"GIT" pick"zsh-github-issues.service.zsh" wait'2' lucid
zi light z-shell/zsh-github-issues
```

## Pulling ices from the ZI packages

Recent ZI supports packages which hold the needed ices. To install the plugin from
them, issue:

```zsh
zi pack for @github-issues
zi pack for @github-issues-srv
```

## Screenshot

![screenshot](https://raw.githubusercontent.com/z-shell/zsh-github-issues/main/img/git.png)

<!-- vim:set tw=89: -->
