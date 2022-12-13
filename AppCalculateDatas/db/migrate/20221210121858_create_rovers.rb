class CreateRovers < ActiveRecord::Migration[6.1]
  def change
    create_table :rovers do |t|
      t.float :puntoPartenzaX, :null => false
      t.float :puntoPartenzaY, :null => false
      t.float :direzioneN, :null => false
      t.float :direzioneS, :null => false
      t.float :direzioneE, :null => false
      t.float :direzioneW, :null => false
      t.integer :command_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :rovers
  end 
end
