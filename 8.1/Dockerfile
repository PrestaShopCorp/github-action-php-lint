FROM php:8.1

LABEL "com.github.actions.name"="PHP Syntax check"
LABEL "com.github.actions.description"="Run the native PHP linter"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/PrestaShop/github-action-php-lint"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="PrestaShop <contact@prestashop.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
