class CreateRovers < ActiveRecord::Migration[6.1]
  def change
    create_table :rovers do |t|
      t.float :puntoPartenzaX
      t.float :puntoPartenzaY
      t.float :direzioneN
      t.float :direzioneS
      t.float :direzioneE
      t.float :direzioneW

      t.timestamps
    end
  end

  def self.down
    drop_table :rovers 
  end
end
