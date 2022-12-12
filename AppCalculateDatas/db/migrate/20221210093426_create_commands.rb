class CreateCommands < ActiveRecord::Migration[6.1]
  def change
    create_table :commands do |t|
      t.string :command_name, :null => false, :unique => true
      t.string :code, :null => false, :unique => true

      t.timestamps
    end
    Command.create(:command_name => "Laterale Moviente",    :code => "LM")
    Command.create(:command_name => "Verticale Movimento",  :code => "VM")
    Command.create(:command_name => "Avvolgimento",         :code => "AVV")
    Command.create(:command_name => "Rilevazione Ostacoli", :code => "RO")
    Command.create(:command_name => "Oggetto Fermo",        :code => "OF")
  end
end
