class CreateUsermodels < ActiveRecord::Migration[6.1]
  def change
    create_table :usermodels do |t|
      t.string :username
      t.text :email
      t.string :password

      t.timestamps
    end
  end
end
