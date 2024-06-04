alias gob="go build"
alias gou="ginkgo -r --randomize-all"
alias gol="golangci-lint run"
alias gom="mockery --all"

alias pyl="poetry run black features; poetry run pylint features"
alias ftest="gob && check_test_repo_token && poetry run behave"

check_test_repo_token() {
  if [[ -z "$TEST_REPO_TOKEN" ]]; then
    read "token?Please enter the value for TEST_REPO_TOKEN: "
    export TEST_REPO_TOKEN="$token"
  fi
}

alias lint="gol && pyl"
