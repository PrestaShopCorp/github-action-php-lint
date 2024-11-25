# GitHub Action for PHP syntax check

This actions runs `php -l` on all PHP files found in the current project.

## Getting Started

Using this action can be done with this template:

```
steps:
  - name: Checkout
    uses: actions/checkout@v4
    with:
      fetch-depth: 0
  - name: PHP syntax checker 5.6
    uses: PrestaShopCorp/github-action-php-lint/5.6@v1
    with:
      folder-to-exclude: "! -path \"./vendor/*\" ! -path \"./customer/folder/excluded/*\""
  - name: PHP syntax checker 7.3
    uses: PrestaShopCorp/github-action-php-lint/7.3@v1
    with:
      folder-to-exclude: "! -path \"./vendor/*\" ! -path \"./customer/folder/excluded/*\""
  - name: PHP syntax checker 8.4
    uses: PrestaShopCorp/github-action-php-lint/8.4@v1
    with:
      folder-to-exclude: "! -path \"./vendor/*\" ! -path \"./customer/folder/excluded/*\""
```

The action ignores the folder `vendor` at root of project by default.

In this example, your workflow will run the PHP syntax check with PHP 5.6, 7.3 & 8.4.
