# == Class: psprompt
#
# Module to manage PS1 prompts
#
class psprompt (
  $profile_dir    = '/etc/profile.d/',
  $cshfile_path   = '/etc/profile.d/ps1.csh',
  $cshfile_ensure = 'file',
  $cshfile_owner  = 'root',
  $cshfile_group  = 'root',
  $cshfile_mode   = '0644',
  $shfile_path    = '/etc/profile.d/ps1.sh',
  $shfile_ensure  = 'file',
  $shfile_owner   = 'root',
  $shfile_group   = 'root',
  $shfile_mode    = '0644',
  $psname         = $::hostname,
) {

  # Validates $cshfile_ensure
  validate_re($cshfile_ensure, ['^file','^present','^absent'], "Valid values for \$cshfile_ensure are \'absent\', \'file\', or \'present\'. Specified value is ${cshfile_ensure}")

  # Validates $cshfile_ensure
  validate_re($shfile_ensure, ['^file','^present','^absent'], "Valid values for \$shfile_ensure are \'absent\', \'file\', or \'present\'. Specified value is ${shfile_ensure}")

  file { 'ps1.csh':
    ensure  => $cshfile_ensure,
    path    => $cshfile_path,
    owner   => $cshfile_owner,
    group   => $cshfile_group,
    mode    => $cshfile_mode,
    content => template('psprompt/ps1.csh.erb'),
  }

  file { 'ps1.sh':
    ensure  => $shfile_ensure,
    path    => $shfile_path,
    owner   => $shfile_owner,
    group   => $shfile_group,
    mode    => $shfile_mode,
    content => template('psprompt/ps1.sh.erb'),
  }
}
