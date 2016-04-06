Sequel::Model.plugin :active_model
Sequel::Model.plugin :association_pks
Sequel::Model.plugin :csv_serializer
Sequel::Model.plugin :defaults_setter
Sequel::Model.plugin :delay_add_association
Sequel::Model.plugin :dirty
Sequel::Model.plugin :error_splitter
Sequel::Model.plugin :string_stripper
Sequel::Model.plugin :timestamps, :update_on_create=>true
