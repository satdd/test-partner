class CreatePartners < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.integer :inn
      t.string :name
      t.string :site
      t.string :phone
      t.string :yml_link
      t.string :city
      t.string :address
      t.string :emp_name
      t.string :emp_email
      t.string :emp_phone

      t.timestamps
    end
  end
end
