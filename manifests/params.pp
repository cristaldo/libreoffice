# == Class: libreoffice
#
# === Information
# This manifest is the libreoffice repository configuration. 
# It will provide the latest version of libreoffice - since 
# the release's repositories are updated! 
#								  Enjoy!
# Copyright 2014 Rafael Cristaldo

# To determine your libreoffice's language,you just need changing the
# default parameter $def_lang =  "en-us" to your prefered language:
# Examples: 
# de -- German langua
# pt -- Portuguese languag
# en-gb -- English_briti
# es    -- Spanish langu
# et    -- Estonian lang
# fr    -- French langua
$def_lang = "en-us"

class	libreoffice::params	{

 case $::timezone {
	'brst': {
	 $lib_lang = "pt-br" }
 	
	 default: {
	 $lib_lang = $def_lang }
         } 

# Some releases hasn't the official repositories updated yet!
# Because of this, we needed to change some release's repositories, unless ppa.
$quantal_repo = "libreoffice-4-0"
$lib_repo = "ppa"

 case $::lsbdistcodename {
	'quantal': { 
	 $repo = $quantal_repo }
 
	 default: { 
	 $repo = $lib_repo }
	 } 

# Somes releases require the core and others packages, which can be placed here:
$quantal_pkgs = ['libreoffice',
		 'libreoffice-core',
		 'libreoffice-gnome',
		 'libreoffice-ogltrans',
		 'libreoffice-pdfimport',
		 "libreoffice-help-${loc_lang}",
		 "libreoffice-l10n-${loc_lang}"]

$lib_pkgs = ['libreoffice',
	     'libreoffice-ogltrans',
	     'libreoffice-pdfimport',
	     "libreoffice-help-${loc_lang}",
	     "libreoffice-l10n-${loc_lang}"]

case $::lsbdistcodename {
	'quantal': {
	 $libreoffice = $quantal_pkgs }

	 default: {
	 $libreoffice = $lib_pkgs } 
	 }
}
