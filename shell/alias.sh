alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"
alias ll="ls -lh"
alias la="ls -A"
alias l="ls -CF"
alias mkdir="mkdir -pv"
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"

# System and Package Management
alias update="sudo apt update && sudo apt upgrade -y"
alias cls="clear"
alias reboot="sudo reboot"
alias shutdown="sudo shutdown -h now"
alias free="free -h"
alias df="df -h"
alias du="du -sh *"
alias ps="ps aux --sort=-%mem"
alias grep="grep --color=auto"
alias top="htop"

# Networking
alias myip="curl ifconfig.me"
alias ports="netstat -tulanp"
alias ping="ping -c 5"
alias wget="wget -c"
alias speed="speedtest-cli --bytes"
alias chknet="nload"

# Git
alias gst="git status"
alias gco="git checkout"
alias gcm="git commit -m"
alias gaa="git add --all"
alias gpull="git pull origin $(git rev-parse --abbrev-ref HEAD)"
alias gpush="git push origin $(git rev-parse --abbrev-ref HEAD)"
alias glog="git log --oneline --graph --decorate"

# Docker
alias dps="docker ps"
alias dpa="docker ps -a"
alias dstart="docker start"
alias dstop="docker stop"
alias drm="docker rm"
alias drmi="docker rmi"
alias dexec="docker exec -it"

# Development
alias py="python3"
alias pip="pip3"
alias serve="python3 -m http.server"
alias code="code ."
alias vi="vim"
alias javac="javac -J-Dfile.encoding=UTF-8"

# Customizing and Reloading
alias reload="source ~/.zshrc"
alias editrc="vim ~/.zshrc"
alias cls="clear && printf '\e[3J'"
alias lscolors="dircolors -p > ~/.dircolors"
# General Commands
alias gobuild="go build"                         # Build the current project
alias gorun="go run"                             # Run Go files
alias gotest="go test ./..."                     # Run all tests in the project
alias gotestv="go test -v ./..."                 # Run all tests with verbose output
alias goclean="go clean"                         # Remove build artifacts
alias gofmt="gofmt -w ."                         # Format all Go files in the current directory
alias govet="go vet ./..."                       # Run Go's static code analysis
alias goupdate="go get -u ./..."                 # Update all dependencies
alias gomodtidy="go mod tidy"                    # Clean up unused dependencies in go.mod

# Module Management
alias gomodinit="go mod init"                    # Initialize a new Go module
alias gomodverify="go mod verify"                # Verify dependencies
alias goupgrade="go get -u"                      # Upgrade a specific dependency

# Documentation and Information
alias godoc="go doc"                             # Display documentation for a package
alias golist="go list ./..."                     # List all packages in the project
alias godeps="go list -m all"                    # List all module dependencies

# Binary Management
alias gobin="go install"                         # Install a Go binary
alias gobuildtags="go build -tags"               # Build with specific tags
alias gorunmain="go run main.go"                 # Run the main file

# Testing Aliases
alias gofasttest="go test -short ./..."          # Run short tests only
alias gobenchmark="go test -bench=."             # Run benchmarks
alias gotrace="go test -race ./..."              # Run tests with race condition detection