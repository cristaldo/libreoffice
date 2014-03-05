# == Class: libreoffice::params
#
# === Information
# This manifest is to provide all the libreoffice's parameters. 
#
# To determine your libreoffice's language, you just need changing the
# default parameter $def_lang =  "en-us" to your prefered language:
# Examples: 
# de -- German 
# pt -- Portuguese 
# en-gb -- English_british
# es    -- Spanish 
# et    -- Estonian 
# fr    -- French 
$def_lang = "en-us"
#								  Enjoy!
# Copyright 2014 Rafael Cristaldo

class	libreoffice::params {

 case $::timezone {
	'brst','brt': {
	 $lib_lang = "pt-br" }
 	
	 default: {
	 $lib_lang = $def_lang }
         } 

# Some releases hasn't the official repositories updated yet!
# Because of this, we needed to change some release's repositories, unless ppa.
$quantal_repo = "libreoffice-4-0"
$lib_repo = "ppa"

# Packages to be removed if used libreoffice::uninstall option.
$lib_pkgs_purged = ['libreoffice',
	'libreoffice-core',
	'libreoffice-gnome',
	'libreoffice-common',
	'libreoffice-style-human',
	'libreoffice-style-tango',
	'uno-libs3',
	'libreoffice-ogltrans',
	'libreoffice-pdfimport',
	'libreoffice-style-galaxy',
	"libreoffice-help-${lib_lang}",
	"libreoffice-l10n-${lib_lang}"]

# Somes releases require the core and others packages, which can be placed here:
$quantal_pkgs = ['libreoffice',
	'libreoffice-core',
	'libreoffice-gnome',
	'libreoffice-ogltrans',
	'libreoffice-pdfimport',
	"libreoffice-help-${lib_lang}",
	"libreoffice-l10n-${lib_lang}"]

$lib_pkgs = ['libreoffice',
	'libreoffice-ogltrans',
	'libreoffice-pdfimport',
	"libreoffice-help-${lib_lang}",
	"libreoffice-l10n-${lib_lang}"]

 case $::lsbdistcodename {
	'quantal': { 
	 $repo = $quantal_repo 
	 $libreoffice = $quantal_pkgs }
 
	 default: { 
	 $repo = $lib_repo 
	 $libreoffice = $lib_pkgs } 
	 } 
}
