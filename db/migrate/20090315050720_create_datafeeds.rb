class CreateDatafeeds < ActiveRecord::Migration
  def self.up
    create_table :datafeeds do |t|
      t.string :name
      t.string :source
      t.string :issue

      t.timestamps
    end
  end

  def self.down
    drop_table :datafeeds
  end
end
