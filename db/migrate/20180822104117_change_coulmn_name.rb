class ChangeCoulmnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :portfolios, :url, :github_url
  end
end
