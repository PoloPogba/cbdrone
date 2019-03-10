class AddConfirmable < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      ## Trackable
      t.column :confirmation_token, :string
      t.column :confirmed_at, :datetime
      t.column :confirmation_sent_at, :datetime
      t.column :unconfirmed_email, :string
      
    end
  end
end

