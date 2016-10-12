class TodosMigration < Peictt::Migrations
  def change
    create_table :todos do |t|
      t.integer :id, null: false, primary_key: true, auto_increment: true
      t.string :name
      t.string :done

      t.timestamps
    end
  end

  def down
    drop :todos
  end
end
