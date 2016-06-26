Hanami::Model.migration do
  change do
    create_table :goals do
      primary_key :id

      column :week, Integer
      column :year, Integer
    end
  end
end
