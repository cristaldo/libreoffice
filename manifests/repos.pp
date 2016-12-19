# == Class: libreoffice
#
# === Information
# This manifest is the libreoffice repository configuration. 
# It will provide the latest version of libreoffice - since 
# the release's repositories are updated! 
#
# With this new version, it is possible to install libreoffice on Linux Mint
# with this puppet module.
#								  Enjoy!
# Copyright 2014 Rafael Cristaldo

class	libreoffice::repos (
	$lib_repo = $libreoffice::params::lib_repo ) inherits libreoffice {

	case $::lsbdistid {
        'debian','ubuntu': {
		include apt

	apt::source	{'libreoffice':
	location	=> "http://ppa.launchpad.net/libreoffice/${lib_repo}/ubuntu",
        release         => "${::lsbdistcodename}",
    	repos          	=> "main",
    	key            	=> "36E81C9267FD1383FCC4490983FBA1751378B444",
    	key_server     	=> "keyserver.ubuntu.com",
    	include_src    	=> true
    			}
	}
        'LinuxMint': {
		include apt

	apt::source	{'libreoffice-mint':
	location	=> "http://ppa.launchpad.net/libreoffice/${lib_repo}/ubuntu",
        release         => "precise",
    	repos          	=> "main",
    	key            	=> "36E81C9267FD1383FCC4490983FBA1751378B444",
    	key_server     	=> "keyserver.ubuntu.com",
    	include_src    	=> true
    			}
	}
	
	default: { fail ("Operating System not supported $::operatingsystem") }
	}
}
