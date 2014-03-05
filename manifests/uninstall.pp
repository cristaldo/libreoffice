# == Class: libreoffice::uninstall
#
# === Information
# This manifest is an option to Remove the libreoffice's package and repositories from your computer. 
#
# === How to use it!
# You just need to complete the site.pp with <::uninstall>
# node agent.puppet  {
#	include libreoffice::uninstall
# }
#								  Enjoy!
# Copyright 2014 Rafael Cristaldo

class	libreoffice::uninstall (
$libreoffice = $libreoffice::params::lib_pkgs_purged) inherits libreoffice::params {


 case $::lsbdistid {
 'LinuxMint': { 
 $libreoffice_repos = "libreoffice-mint.list" }
 default:   { 
 $libreoffice_repos = "libreoffice.list" }
 }

	package { $libreoffice:
	ensure 	=> purged,
	notify 	=> File['libreoffice_repo'],
	}
	
	file	{'libreoffice_repo':
	path	=> "/etc/apt/sources.list.d/${libreoffice_repos}",
	ensure	=> absent,
	}
}
