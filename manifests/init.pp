# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include puppet_applocker
class puppet_applocker {
  include puppet_applocker::services
  include puppet_applocker::settings

  Class['puppet_applocker::settings'] -> Class['puppet_applocker::services']

}
