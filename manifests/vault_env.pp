# ex: syntax=puppet si sw=2 ts=2 et
class hashicorp::vault_env (
  $manage_repo = true,
)
  class { 'hashicorp':
    manage_repo => $manage_repo,
  }
  $install_dir = $::hashicorp::install_dir

  file { "${install_dir}/vault-env":
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => 'puppet:///modules/hashicorp/vault-env',
  }
}
