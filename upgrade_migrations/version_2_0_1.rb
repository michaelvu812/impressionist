class Version201UpdateImpressionsTable < ActiveRecord::Migration[4.2]
  def self.up
    add_column :impressions, :user_type, :string
    add_column :impressions, :original_url, :text

    add_index :impressions, [:user_type, :user_id]
  end

  def self.down
    remove_index :impressions, [:user_type, :user_id]
    remove_column :impressions, :user_type
    remove_column :impressions, :original_url
  end
end