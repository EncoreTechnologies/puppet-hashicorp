# ex: syntax=puppet si sw=2 ts=2 et
define hashicorp::service (
  $ensure,
  $enable,
  $provider,
  $command     = false,
  $args        = undef,
  $manage_repo = true,
) {
  class { 'hashicorp':
    manage_repo => $manage_repo,
  }

  if $::hashicorp::defaults::service_type {
    create_resources("::hashicorp::service::${::hashicorp::defaults::service_type}", {
      $name => {
        command     => $command,
        args        => $args,
      }
    })
  }

  service { $name:
    ensure   => $ensure,
    enable   => $enable,
    provider => $provider,
    require  => Anchor["hashicorp::install::${name}", "hashicorp::config::${name}"],
  }
}
