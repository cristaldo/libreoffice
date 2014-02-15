Libreoffice Puppet Module
=========================

Puppet Module to install libreoffice on Ubuntu OS

Puppet module for installing
[LibreOffice](https://github.com/cristaldo/libreoffice) 

This module is also available on the
[Puppet Forge](https://forge.puppetlabs.com/cristaldo/libreoffice)

## Usage

The module includes a single class:

```
  node agent.puppet {
	include libreoffice
}
```

This module installs and configures the libreoffice repository and its suite packages,
as well the selected language on the libreoffice::params class.
If you didn't chose the language on the params.pp manifest, it will install the en-us
language by default, unless the timezone is BRST, (GTM) the language will be pt-br.

### Homologated distributions

This module has been tested with the following releases of Ubuntu...

```
Release             Version          Repository         Observations
Ubuntu 12.04 precise   => 4.2.0         ppa repository
Ubuntu 12.10 quantal   => 4.0.0         libreoffice-4-0  3.6.2 from ppa repository
Ubuntu 13.04 raring    => 4.1.4         ppa repository 
Ubuntu 13.10 saucy     => 4.2.0         ppa repository
Ubuntu 14.04 trusty    => 4.2.0         ppa repository
Lubuntu 13.04 raring   => 4.1.4         ppa repository
Lubuntu 13.10 saucy    => 4.2.0         ppa repository
Xubuntu 13.04 raring   => 4.1.4         ppa repository
Xubuntu 13.10 saucy    => 4.2.0         ppa repository

...and any distributions based on these releases.
```

The default repository source is (http://ppa.launchpad.net/) but unfortunately not all 
the repositories of the distributions are updated.

### Attention!

If you have installed the libreoffice's packages manually with .DEB files, you must remove 
them before applying this module. 

### Copyright and License 

 Puppet Module cristaldo/libreoffice is a module to install and configure 
 LibreOffice's repositories and packages.
 Copyright (C) 2014  Rafael Cristaldo

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.

 Puppet Module cristaldo/libreoffice Copyright (C) 2014  Rafael Cristaldo
 This program comes with ABSOLUTELY NO WARRANTY. This is free software, 
 and you are welcome to redistribute it under certain conditions.
