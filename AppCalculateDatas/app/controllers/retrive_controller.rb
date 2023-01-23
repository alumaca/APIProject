
require 'json'

class RetriveController < ApplicationController
#  before_action :init, only: %i[ index ]

  def index
    puts "************ Retive index*************"
    connectToServerApp

    puts "************ END RETRIVE *****************"
    redirect_to rovers_path
  end

  def init


  end


  def connectToServerApp
    base_url  = nil
    num_records_read = nil
    project_dir = Dir.pwd

    path_custom_file = Rails.root.join(project_dir, "config", "customSetting.json")
    file = nil
    errReadFile = false

    begin
      file = File.read(path_custom_file)
    rescue
      errReadFile = true
    end
    if errReadFile == false
      data_hash_custom = nil
      err_read_cd = false
      begin
        data_hash_custom = JSON.parse(file)
      rescue JSON::ParserError
        puts "JSON::ParserError"
        err_read_cd = true
      end
      base_url  = nil
      if !err_read_cd
        puts "*****data_hash ", data_hash_custom
         base_url         = data_hash_custom["base_url"]
         num_records_read = data_hash_custom["num_records_read"].to_i
      end

    end
    puts "url ", base_url, "num ", num_records_read
    ########################################
    if !base_url.nil? && !num_records_read.nil?
      isEexc   = false
      response = nil
      full_url = base_url + "/api/v1/rovers"
      puts "****full_url: " + full_url
      begin
        response = Net::HTTP.get_response( URI.parse( full_url ) )
      rescue StandardError
         isExc  = true
         puts "Non ho rete"
      end
      json_res = JSON.parse( response.body )

      if !isExc
        server_data_json = json_res["data"]
        puts "**server_data_json", server_data_json

        if server_data_json.size > num_records_read
          new_datas = []
          if num_records_read == 0
            new_datas = server_data_json
            puts "***num_records_read =0 ", num_records_read
          else
            puts "***num_records_read non 0 ", num_records_read
            for r in server_data_json
              if r["id"].to_i > num_records_read
                puts "**** r nuovo", r
                new_datas << r
              end
            end
          end
          puts "Da leggere ", new_datas
          for r in new_datas
            puts "***ist ", r
            puntoPartenzaX = r["puntoPartenzaX"].to_f
            puntoPartenzaY = r["puntoPartenzaY"].to_f
            direzioneN     = r["direzioneN"].to_f
            direzioneS     = r["direzioneS"].to_f
            direzioneE     = r["direzioneE"].to_f
            direzioneW     = r["direzioneW"].to_f
            puts  "*********direzioneS ", direzioneS
            if puntoPartenzaY < 0 # Movimento laterale
              lmid = Command.where(:code => "LM").first.id
              Rover.create(:puntoPartenzaX => puntoPartenzaX.to_f, :puntoPartenzaY => puntoPartenzaY.to_f + 1 , :direzioneN => direzioneN.to_f + 2  , :direzioneS  => direzioneS.to_f + 3  , :direzioneE  => direzioneE.to_f + 4 , :direzioneW  => direzioneN.to_f + 5 , :command_id  => lmid )
            else if puntoPartenzaY == 0 # Fermo
              Rover.create(:puntoPartenzaX => puntoPartenzaX.to_f   ,:puntoPartenzaY => puntoPartenzaY.to_f + 1            ,:direzioneN     => direzioneN.to_f + 2 ,:direzioneS     => direzioneS.to_f + 3       ,:direzioneE     => direzioneE.to_f + 4   ,:direzioneW     => direzioneN.to_f + 5        ,:command_id     => Command.where(:code => "OF").first.id )
            else if puntoPartenzaY > 0 # Movimeto Verticale
              Rover.create(:puntoPartenzaX => puntoPartenzaX.to_f ,:puntoPartenzaY => puntoPartenzaY.to_f + 1 ,:direzioneN     => direzioneN.to_f + 2              ,:direzioneS     => direzioneS.to_f + 3       ,:direzioneE     => direzioneE.to_f + 4     ,:direzioneW     => direzioneN.to_f + 5              ,:command_id     => Command.where(:code => "VM").first.id )
            end
          end # End of for
          #server_data_json.each { |e| puts "**** ST" }
          data_hash_custom["num_records_read"] = server_data_json.size
          puts "****num_records_read ", data_hash_custom["num_records_read"]
          File.write(path_custom_file, JSON.dump(data_hash_custom))
          ### da eliminare

          #data_hash_custom["num_records_read"] = 0
          #File.write(path_custom_file, JSON.dump(data_hash_custom))
          ### fine
    end


      end

    end
  end

    end
  end

end
