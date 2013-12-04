class Core < ActiveRecord::Migration
  def change
  	create_table :doctors do |t|
  		t.string :name
  		t.string :address
  		t.string :office_phone
  		t.string :mobile_phone
  		t.string :email
  	end
  end
end
