# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include puppet_applocker::services
class puppet_applocker::services {

  # Start the services
  service { 'AppID':
    ensure   => 'running',
    enable   => 'true',
    provider => 'windows',
  }
  #service { 'AppIDSvc':
  #  ensure       => 'running',
  #  enable       => 'true',
  #  logonaccount => 'NT Authority\LocalService',
  #  provider     => 'windows',
  #}
  registry::value { 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppIDSvc\Start':
    key    => 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppIDSvc',
    value  => 'Start',
    data   => '2',
    type   => 'dword',
    notify => Reboot['after setup'],
  }

  reboot { 'after setup':
    apply => finished,
  }
}
