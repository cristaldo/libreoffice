# == Class: libreoffice
#
# === Information
# This manifest is the libreoffice repository configuration. 
# It will provide the latest version of libreoffice - since 
# the release's repositories are updated! 
#
# === Parameters
#
# The parameters are declared on libreoffice::params manifest file.
#
# === Variables
#
# The variables are declared on libreoffice::params manifest file too.
#
# === Examples
#
#  node 'agent.puppet' { 
#	 include libreoffice
#  }
#
# === Authors
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
