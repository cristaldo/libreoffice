# == Class: libreoffice::install
#
# === Information
# This manifest is to install the libreoffice's packages. 
#								  Enjoy!
# Copyright 2014 Rafael Cristaldo

class	libreoffice::install (
	$libreoffice = $libreoffice::params::libreoffice,
	$install = $libreoffice::params::install) inherits libreoffice {

	package { $libreoffice:
		ensure => $install,
		}
}
