# == Class: libreoffice
#
# === Information
# This module can install the libreoffice's repository and packages. 
# It will provide the latest version of libreoffice - since the release's 
# repositories are updated!
# Compatible with Ubuntu's Releases and Linux Mint 
#
# === Parameters
#
# The parameters are declared on libreoffice::params manifest file.
#
# === Variables
#
# The variables are declared on libreoffice::params manifest file too.
#
# === Uninstall the Libreoffice
#
# This version of cristaldo/libreoffice module now offers the option of Uninstall the Libreoffice.
#
# Usually all the puppet modules provide the option of Install or/and configure some resource!, but 
# if we need to Remove it for any reason?
# To use this options just append <::uninstall>
#
# === Examples
# To Install the LibreOffice
#
#  node 'agent.puppet' { 
#	 include libreoffice
#  }
#
# To uninstall the LibreOffice
#
#  node 'agent.puppet' { 
#	 include libreoffice::uninstall
#  }
# === Author
#
# Rafael Cristaldo rafael@rafaelcristaldo.com.br
#
# === Copyright
#
# Copyright 2014 Rafael Cristaldo
#
# === License
#
# GPL v3

class libreoffice {
	
	include libreoffice::params
	include libreoffice::repos
	include libreoffice::install

       Class['libreoffice::params'] ->
	Class['libreoffice::repos'] ->
	 Class['libreoffice::install']
}
