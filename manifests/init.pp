# Class: chocolatey_misc
#
# This module manages chocolatey_misc
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class chocolatey_misc {
  
  $iis_features = ['Web-Server','Web-WebServer','Web-Asp-Net45','Web-ISAPI-Ext','Web-ISAPI-Filter','NET-Framework-45-ASPNET','WAS-NET-Environment','Web-Http-Redirect','Web-Filtering','Web-Mgmt-Console','Web-Mgmt-Tools']

  windowsfeature { $iis_features:
    ensure => present,
  }

#  windowsfeature { "WebAdministration":
#    ensure => present,
#  }

}
