# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include puppet_applocker::settings
class puppet_applocker::settings (
  Hash $registry_options,
) {

  $registry_options.each | String $name, Hash $values | {
    registry::value { $name:
      key   => $values['key'],
      value => $values['value'],
      data  => $values['data'],
      type  => $values['type'],
    }
  }

}
