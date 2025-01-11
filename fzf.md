# fzf

- [fzf](https://junegunn.github.io/fzf/) / [Shell Integration](https://junegunn.github.io/fzf/shell-integration/)

## Usage

| Shortcut                        | Description                                                                                             |
| ------------------------------- | ------------------------------------------------------------------------------------------------------- |
| <kbd>control</kbd> <kbd>R</kbd> | Search commmand history.<br>Optionally copy selected command into clipboard using `pbcopy`.             |
| <kbd>control</kbd> <kbd>T</kbd> | Search files and directories.<br>Preview file content using `bat` or directory structure using `eza`.   |
| <kbd>option</kbd> <kbd>C</kbd>  | Search directories.<br>Print tree structure in the preview window.<br>`cd` into the selected directory. |

| Command        | Description                                                   |
| -------------- | ------------------------------------------------------------- |
| `code **<tab>` | Fuzzy completion for files under the current directory.       |
| `cd **<tab>`   | Fuzzy completion for directories under the current directory. |

> [!note] Fuzzy completion
> [Fuzzy completion](https://junegunn.github.io/fzf/shell-integration/#fuzzy-completion-for-bash-and-zsh) is available for **Bash** and [Zsh](Zsh.md), but not [Fish](Fish.md).

## Install

Install **fzf** with [Homebrew](Homebrew.md).

```shell
brew install fzf
```

Also install [eza](eza.md), [bat](bat.md), [fd](fd.md), and [zoxide](zoxide.md).
## Configure

Configure **fzf** in [Zsh](Zsh.md) and [Fish](Fish.md).

```shell
# ~/.zshrc

# fzf
source <(fzf --zsh)

# CONTROL + R
# - Search commmand history
# - Optionally copy selected command into clipboard using pbcopy
export FZF_CTRL_R_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Use CONTROL + Y to copy command into clipboard (ZSH)'"

# CONTROL + T
# - Search files and directories
# - Preview file content using bat or directory structure using eza
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'if [ -d {} ]; then eza --tree --color=always --icons=always {}; else bat -n --color=always {}; fi'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'
  --color header:italic
  --header 'Use CONTROL + / to toggle preview window (ZSH)'"

# OPTION + C
# - Search directories
# - Print tree structure in the preview window
# - cd into the selected directory 
export FZF_ALT_C_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'eza --tree --colour=always --icons=always {}'
  --color header:italic
  --header '(ZSH)'"

# Use fd instead of find and ignore git files (in .gitignore)
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd for listing path candidates
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

# More fzf previews
_fzf_comprun() {
  local command=$1
  shift
  case "$command" in
    cd)           fzf --preview "$eza_or_bat" "$@" ;;
    export|unset) fzf --preview "eval 'echo ${}'" "$@" ;;
    ssh)          fzf --preview 'dig {}' "$@" ;;
    *)            fzf --preview "$eza_or_bat" "$@" ;;
  esac
}
```

```shell
# ~/.config/fish/config.fish

if status is-interactive

    # fzf
    fzf --fish | source

    # CONTROL + R
    # - Search commmand history
    # - Optionally copy selected command into clipboard using pbcopy
    set -x FZF_CTRL_R_OPTS "
        --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
        --color header:italic
        --header 'Use CONTROL + Y to copy command into clipboard (FISH)'"

    # Choose eza or bat command dynamically
    set eza_or_bat 'if test -d {}; eza --tree --colour=always --icons=always {}; else; bat -n --color=always {}; end'

    # CONTROL + T
    # - Search files and diorectories
    # - Preview file content using bat or directory structure using eza
    set -x FZF_CTRL_T_OPTS "
        --walker-skip .git,node_modules,target
        --preview '$eza_or_bat'
        --bind 'ctrl-/:change-preview-window(down|hidden|)'
        --color header:italic
        --header 'Use CONTROL + / to toggle preview window (FISH)'"

    # OPTION + C
    # - Search directories
    # - Print tree structure the preview window
    # - cd into the selected directory 
    set -x FZF_ALT_C_OPTS "
        --walker-skip .git,node_modules,target
        --preview 'eza --tree --colour=always --icons=always {}'
        --color header:italic
        --header '(FISH)'"

    # Use fd instead of find and ignore git files (in .gitignore)
    set -x FZF_DEFAULT_COMMAND "fd --hidden --strip-cwd-prefix --exclude .git"
    set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
    set -x FZF_ALT_C_COMMAND "fd --type=d --hidden --strip-cwd-prefix --exclude .git"

    # Use fd for listing path candidates
    function _fzf_compgen_path
        fd --hidden --exclude .git . $argv
    end

    # Use fd to generate the list for directory completion
    function _fzf_compgen_dir
        fd --type=d --hidden --exclude .git . $argv
    end

    # More fzf previews
    function _fzf_comprun
        set command $argv[1]
        set -e argv[1]
        switch $command
            case cd
                fzf --preview 'eza --tree --color=always {} | head -200' $argv
            case export
                fzf --preview "command echo $argv" $argv
            case unset
                fzf --preview "command echo $argv" $argv
            case ssh
                fzf --preview 'dig {}' $argv
            case '*'
                fzf --preview $eza_or_bat $argv
        end
    end

end
```
