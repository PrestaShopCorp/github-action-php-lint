# GitHub Action for PHP syntax checking

This actions runs `php -l` on all PHP files found in the current project.

## Getting Started

Use this action like:

```yaml
jobs:
  php-linter:
    name: PHP syntax checking
    runs-on: ubuntu-latest
    strategy:
      matrix:
        php_version: ["5.6", "7.2", "7.3"]
    steps:
      - name: Checkout sources
        uses: actions/checkout@v2.0.0

      - name: PHP syntax checker ${{ matrix.php_version }}
        uses: "prestashop/github-action-php-lint@master"
        with:
          php-version: ${{ matrix.php_version }}
          folder-to-exclude: "! -path \"./vendor/*\" ! -path \"./customer/folder/excluded/*\""
```

The action ignores the folder `vendor` at root of project by default.

In this example, your workflow will run the PHP syntax check with PHP 5.6, 7.2 & 7.3.
