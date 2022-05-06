# ex: syntax=puppet si sw=2 ts=2 et
class hashicorp::vault (
  $version,
  $manage_repo = true,
) {
  hashicorp::download { 'vault':
    version     => $version,
    manage_repo => $manage_repo,
  }
}
