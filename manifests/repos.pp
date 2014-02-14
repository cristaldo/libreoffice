# == Class: libreoffice
#
# === Information
# This manifest is the libreoffice repository configuration. 
# It will provide the latest version of libreoffice - since 
# the release's repositories are updated! 
#								  Enjoy!
# Copyright 2014 Rafael Cristaldo

class	libreoffice::repos (
	$lib_repo = $libreoffice::params::lib_repo )
inherits libreoffice {

	case $::operatingsystem {
        'debian','ubuntu': {
		include apt

	apt::source	{'libreoffice':
	location	=> "http://ppa.launchpad.net/libreoffice/${lib_repo}/ubuntu",
        release         => "${::lsbdistcodename}",
    	repos          	=> "main",
    	key            	=> "1378B444",
    	key_server     	=> "keyserver.ubuntu.com",
    	include_src    	=> true
    			}
	}
	
	default: { notice "Operating System not supported ${::operatingsystem}"}
	}
}

