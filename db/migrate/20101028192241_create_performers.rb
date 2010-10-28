class CreatePerformers < ActiveRecord::Migration
  def self.up
    create_table :performers do |t|
      t.column :name, :string
    end
  end

  def self.down
    drop_table :performers
  end
end
