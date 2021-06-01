class AddEmailSubscriberToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email_subscriber, :boolean
  end
end
