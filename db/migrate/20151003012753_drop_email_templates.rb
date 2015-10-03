class DropEmailTemplates < ActiveRecord::Migration
  def up
    drop_table :email_templates
  end

  def down
    create_table :email_templates do |t|
      t.string :name
      t.text :html
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end