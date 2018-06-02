class CreateUser < ActiveRecord::Migration[5.2]

  # has_secure_password



  def change
    create_table :users do |t|
        t.string :username
        t.string :email
        t.string :password_digest

        t.timestamps
    end
  end
end
