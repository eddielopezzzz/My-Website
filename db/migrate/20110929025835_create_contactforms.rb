class CreateContactforms < ActiveRecord::Migration
  def self.up
    create_table :contactforms do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :contactforms
  end
end
