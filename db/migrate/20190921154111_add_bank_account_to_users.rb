class AddBankAccountToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :bank_account_name, :string
    add_column :users, :bank_account_branch, :string
    add_column :users, :bank_account_number, :string
    add_column :users, :bank_account_holder, :string
    add_column :users, :bank_account_type, :string
    add_column :users, :is_yucho, :boolean
  end
end
