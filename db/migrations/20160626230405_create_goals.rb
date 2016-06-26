Hanami::Model.migration do
  change do
    create_table :goals do
      primary_key :id
      foreign_key :week_id, :weeks, on_delete: :cascade, null: false

      column :name, String
      column :description, String
      column :status, String
    end
  end
end
