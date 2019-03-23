C++ Lint Action
===============

GitHub action that runs `cpplint`.

## Usage

Run lint with default setting:

```
workflow "C++ Lint" {
  on = "push"
  resolves = ["lint-action"]
}

action "lint-action" {
  uses = "CyberZHG@github-action-python-lint@master"
}
```

Add arguments:

```
workflow "C++ Lint" {
  on = "push"
  resolves = ["lint-action"]
}

action "lint-action" {
  uses = "CyberZHG/github-action-cpp-lint@master"
  args = "--linelength=120 --filter=-build/include_subdir include/*.h src/*.cpp tests/*.cpp"
}
```
