# godot-ci-template

![gut](https://github.com/jason-h-35/godot-ci-template/workflows/gut/badge.svg)
![pre-commit](https://github.com/jason-h-35/godot-ci-template/workflows/pre-commit/badge.svg)

## What is this repo?
This is a bare-ish Godot project with
![Gut](https://github.com/bitwes/Gut) and ![Pre-commit](https://pre-commit.com/)
pre-installed as GitHub Workflows.

This gives Godot devs out-of-the-box CI/CD for their game projects

## How do I use it
1. Make a repo from the template
2. Open with Godot 3.2.2 or later
3. Check `.pre-commit-config.yml` and comment out hooks you don't want run.
3. Make commits as usual and add tests to `tests/unit` or `tests/integration`. Only godot scripts starting with `test_` get tested!
4. When `master` gets a commit or a PR, the CI will run automagically on all enabled pre-commit hooks and all gut tests.
