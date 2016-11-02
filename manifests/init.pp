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
  
  $_is_windows_2008 = $::kernelmajversion ? {
    '6.1'   => true,
    default => false
  }

#  $iis_features = $_is_windows_2008 ? {
#    true    => ['Web-Server','Web-ISAPI-Ext','Web-ISAPI-Filter','WAS-NET-Environment','Web-Http-Redirect','Web-Filtering','Web-Mgmt-Console','Web-Mgmt-Tools'],
#    default => ['Web-Server','Web-ISAPI-Ext','Web-ISAPI-Filter','NET-Framework-45-ASPNET','WAS-NET-Environment','Web-Http-Redirect','Web-Filtering','Web-Mgmt-Console','Web-Mgmt-Tools']
#  }

  $iis_features = $_is_windows_2008 ? {
     true    => ['Web-Server','Web-WebServer','Web-ISAPI-Ext','Web-ISAPI-Filter','WAS-NET-Environment','Web-Http-Redirect','Web-Filtering','Web-Mgmt-Console','Web-Mgmt-Tools'],
     default => ['Web-Server','Web-WebServer','Web-Asp-Net45','Web-ISAPI-Ext','Web-ISAPI-Filter','NET-Framework-45-ASPNET','WAS-NET-Environment','Web-Http-Redirect','Web-Filtering','Web-Mgmt-Console','Web-Mgmt-Tools']
  }
  
  windowsfeature { $iis_features:
    ensure => present,
  }

}
