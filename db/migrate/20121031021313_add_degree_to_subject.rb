class AddDegreeToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :degree, :string
  end
end
