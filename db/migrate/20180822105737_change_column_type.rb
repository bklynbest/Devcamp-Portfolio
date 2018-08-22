class ChangeColumnType < ActiveRecord::Migration[5.1]
  def change
    change_column :portfolios, :github_url, :text
  end
end
