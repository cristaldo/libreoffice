# == Class: libreoffice
#
# === Information
# This manifest is the libreoffice repository configuration. 
# It will provide the latest version of libreoffice - since 
# the release's repositories are updated! 
#								  Enjoy!
# Copyright 2014 Rafael Cristaldo

class	libreoffice::install (
	$libreoffice = $libreoffice::params::libreoffice)

inherits libreoffice {

	package { $libreoffice:
		ensure => latest,
		}
}
