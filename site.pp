# site.pp must exist (puppet #15106, foreman #1708)
node default {
  notify { "Welcome to the puppet overlord!!": }
}

node 'puppetmaster.example.gov.nt.ca' {
  notify { "This is the Puppet Master!!!": }
}

node 'n01.example.gov.nt.ca' {
  package { 'docker.io': ensure => 'installed' }
  package { 'docker': ensure => 'installed' }
}
