class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string   "name"
      t.string   "phone"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
