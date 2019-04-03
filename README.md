# GitHub Action for PHP syntax check

This actions runs `php -l` on all PHP files found in the current project.

## Getting Started

Using this action can be done with this template:

```
workflow "Code Quality" {
  on = "push"
  resolves = [
    "PHP 5.6 Syntax check",
    "PHP 7.2 Syntax check",
    "PHP 7.3 Syntax check",
  ]
}

action "PHP 5.6 Syntax check" {
  uses = "docker://prestashop/github-action-php-lint:5.6"
}

action "PHP 7.2 Syntax check" {
  uses = "docker://prestashop/github-action-php-lint:7.2"
}

action "PHP 7.3 Syntax check" {
  uses = "docker://prestashop/github-action-php-lint:7.3"
}
```

In this example, your workflow will run the PHP syntax check with PHP 5.6, 7.2 & 7.3.

## Customizing

By default the script will look for all PHP files in the project. You may want to filter on some directories or files, or adding other parameters to the `find` command.

In this example, we exclude the folder `tools/` from the search:

```diff
workflow "Code Quality" {
  on = "push"
  resolves = [
    "PHP 5.6 Syntax check",
    "PHP 7.2 Syntax check",
  ]
}

action "PHP 5.6 Syntax check" {
  uses = "docker://prestashop/github-action-php-lint:5.6"
+  args = "! -path \"./tools/*\""
}

action "PHP 7.2 Syntax check" {
  uses = "docker://prestashop/github-action-php-lint:7.2"
+  args = "! -path \"./tools/*\""
}
```
