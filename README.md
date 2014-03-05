Libreoffice Puppet Module
=========================

Puppet Module to install LibreOffice on Ubuntu OS

GitHub project
[LibreOffice](https://github.com/cristaldo/libreoffice) 

This module is also available on the
[Puppet Forge](https://forge.puppetlabs.com/cristaldo/libreoffice)

## News!

With this new module version is possible to install LibreOffice on Linux Mint!.
Now we have the Option to remove the module, with the ::uninstall class!
If for some reason you need to remove the module, just modify the include libreoffice
to include libreoffice::uninstall

## Usage

To install LibreOffice:

```
  node agent.puppet {
	include libreoffice
}
```

To UNinstall LibreOffice:

```
  node agent.puppet {
	include libreoffice::uninstall
}
```

This module installs and configures the libreoffice repository and its suite packages,
as well the selected language on the libreoffice::params class.
If you didn't chose the language on the params.pp manifest, it will install the en-us
language by default, unless the timezone is BRST, (GTM) the language will be pt-br.

### Homologated distributions

This module has been tested with the following releases of Ubuntu...

```
Release                Version          Repository         Observations
Ubuntu 12.04 precise   => 4.2.0         ppa repository
Ubuntu 12.10 quantal   => 4.0.0         libreoffice-4-0    3.6.2 from ppa repository
Ubuntu 13.04 raring    => 4.1.4         ppa repository 
Ubuntu 13.10 saucy     => 4.2.0         ppa repository
Ubuntu 14.04 trusty    => 4.2.0         ppa repository
Lubuntu 13.04 raring   => 4.1.4         ppa repository
Lubuntu 13.10 saucy    => 4.2.0         ppa repository
Xubuntu 13.04 raring   => 4.1.4         ppa repository
Xubuntu 13.10 saucy    => 4.2.0         ppa repository
Linux Mint 13 Maya     => 4.2.0         ppa repository     * New!

...and any distributions based on these releases.
```

The default repository source is (http://ppa.launchpad.net/) but unfortunately not all 
the repositories of the distributions are updated.

### Attention!!!

If you have installed the libreoffice's packages manually with .DEB files, you MUST remove 
them before applying this module. 

### Copyright and License 

 Puppet Module cristaldo/libreoffice is a module to install and configure 
 LibreOffice's repositories and packages.
 Copyright (C) 2014  Rafael Cristaldo
