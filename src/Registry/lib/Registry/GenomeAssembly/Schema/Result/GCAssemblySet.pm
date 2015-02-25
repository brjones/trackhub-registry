package Registry::GenomeAssembly::Schema::Result::GCAssemblySet;
use base qw/DBIx::Class::Core/;

__PACKAGE__->table('gc_assembly_set');
__PACKAGE__->add_columns(qw/ set_acc set_chain set_version name long_name is_patch tax_id common_name scientific_name is_refseq refseq_set_acc file_md5 filesafename audit_time audit_user audit_osuser status_id genome_representation assembly_level first_created last_updated /);
__PACKAGE__->set_primary_key('set_acc');
# __PACKAGE__->has_many(cds => 'MyApp::Schema::Result::CD', 'artistid');

1;
