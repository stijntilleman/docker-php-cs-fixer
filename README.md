# Docker image to run PHP-CS-Fixer

> Using [PHP-CS-Fixer by FriendsOfPHP](https://github.com/FriendsOfPHP/PHP-CS-Fixer)

## Daily usage

```sh
# will show you the help message by default
docker run stijntilleman/php-cs-fixer:3

# will run the fixer with the PSR2 ruleset on the current directory
docker run --rm -v `pwd`:/app stijntilleman/php-cs-fixer:3 fix ./ --rules=@PSR2
```

Or you could add something like this to your `.bashrc`

```
php-cs-fixer () {
  docker run -it --rm -v `pwd`:/app  stijntilleman/php-cs-fixer:3 fix --rules=@PSR2 --verbose $@
}
```
