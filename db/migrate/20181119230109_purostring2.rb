class Purostring2 < ActiveRecord::Migration[5.2]
  def change
    remove_column :lectures, :start_hour
   add_column :lectures, :start_hour, :string
  end
end
