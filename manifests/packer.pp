# ex: syntax=puppet si sw=2 ts=2 et
class hashicorp::packer (
  $version,
  $manage_repo = true,
) {
  hashicorp::download { 'packer':
    version     => $version,
    manage_repo => $manage_repo,
  }
}
