=head1 LICENSE

Copyright [2015-2016] EMBL-European Bioinformatics Institute

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=cut

package Registry::Form::User::Registration;
use HTML::FormHandler::Moose;
use namespace::autoclean;
extends 'HTML::FormHandler';

has '+name' => ( default => 'registration_form' );

has_field 'first_name' => (
    label            => 'First name',
    type             => 'Text',
);
 
has_field 'last_name' => (
    label            => 'Last name',
    type             => 'Text',
);
 
has_field 'affiliation' => (
    label            => 'Affiliation',
    type             => 'Text',
);

has_field 'email' => (
    label            => 'Email',
    type             => 'Email',
    required         => 1,
    required_message => 'Please enter the contact email.',
);

has_field 'username' => (
    label            => 'Username',
    type             => 'Text',
    required         => 1,
    required_message => 'Please enter your username.',
);

has_field 'password' => (
    label            => 'Password',
    type             => 'Password',
    required         => 1,
    required_message => 'Please enter your password.',
    minlength        => 5
);

has_field 'password_conf' => (
    label            => 'Password (again)',
    type             => 'Password',
    required         => 1,
    required_message => 'Confirm your password.',
    minlength        => 5
);

has_field 'check_interval' => (
    type             => 'Select',
    options          => [{ value => 0, label => 'Automatic'}, { value => 1, label => 'Weekly'}, { value => 2, label => 'Monthly'} ]
);

has_field 'continuous_alert' => (
    label            => 'Receive continuos alerts',
    type             => 'Checkbox',
    input_without_param => 0,
    checkbox_value   => 1
);

sub validate {
  my $self = shift;

  if ($self->field('password_conf')->value ne
      $self->field('password')->value )
    {
      $self->field('password_conf')
	->add_error('Passwords do not match. Please try again.');
    }
};
    
has_field 'submit'  => ( type => 'Submit', value => 'Register', element_class => ['btn'] );

__PACKAGE__->meta->make_immutable;

no HTML::FormHandler::Moose;

1;
