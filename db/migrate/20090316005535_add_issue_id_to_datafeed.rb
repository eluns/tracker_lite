class AddIssueIdToDatafeed < ActiveRecord::Migration
  def self.up
    add_column :datafeeds, :issue_id, :integer
  end

  def self.down
    remove_column :datafeeds, :issue_id
  end
end
