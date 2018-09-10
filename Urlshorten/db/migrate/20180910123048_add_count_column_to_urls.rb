class AddCountColumnToUrls < ActiveRecord::Migration
  def change
    add_column :urls, :count, :string
  end
end
