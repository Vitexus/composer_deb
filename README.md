Composer Debian Package
=======================

Builds a [Debian](http://debian.org) package to install and run [Composer](http://getcomposer.org).


Usage
-----

The first thing you must build package:
``` bash
 $ ./build.sh
```

This will create our Debian package, which we can now interact with:
``` bash
$ ln ../*.deb
composer_1.10.4_all.deb
$ sudo dpkg --install composer_1.10.4_all.deb
```

Repository
----------

You can also install from our repository

``` shell
sudo apt install lsb-release wget
echo "deb http://repo.vitexsoftware.cz $(lsb_release -sc) backports" | sudo tee /etc/apt/sources.list.d/vitexsoftware-backports.list
sudo wget -O /etc/apt/trusted.gpg.d/vitexsoftware.gpg http://repo.vitexsoftware.cz/keyring.gpg
sudo apt update
sudo apt install composer
```


About
-----
* Original Author: [Rob Loach](http://robloach.net)
* Original Source: [composer.deb](http://github.com/RobLoach/composer.deb)
