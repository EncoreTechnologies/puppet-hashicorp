# ex: syntax=puppet si sw=2 ts=2 et
class hashicorp::terraform (
  $version,
  $manage_repo = true,
) {
  hashicorp::download { 'terraform':
    version     => $version,
    manage_repo => $manage_repo,
  }
}
