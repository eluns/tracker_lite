class AddSourceIdToDatafeed < ActiveRecord::Migration
  def self.up
    add_column :datafeeds, :source_id, :integer
  end

  def self.down
    remove_column :datafeeds, :source_id
  end
end
