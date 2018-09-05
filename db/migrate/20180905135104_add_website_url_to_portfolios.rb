class AddWebsiteUrlToPortfolios < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :website_url, :string
  end
end
