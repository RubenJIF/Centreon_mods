#Traffic MPLS
#Ruben Infanzon rubenjames1155@gmail.com
#
#
#Path to the plugin
package personalizado::ruben::snmp::plugin;

#Needed libraries
use strict;
use warnings;

#Library to check using SNMP protocol
use base qw(centreon::plugins::script_snmp);


sub new {
  my ($class, %options) = @_;
  my $self = $class->SUPER::new(package => __PACKAGE__, %options); 
  bless $self, $class;
  
  #Plugin version
  $self->{version} = '0.1';
  
  # Modes association
  %{$self->{modes}} = (
 
                        # Mode name => path to the mode
                        'traffic-mpls'   => 'personalizado::ruben::snmp::mode::trafficmpls',
                       );

   return $self;
}


1;


__END__

=head1 PLUGIN DESCRIPTION
  
Check MPLS TIMOS NOKIA ROUTER.

=cut
