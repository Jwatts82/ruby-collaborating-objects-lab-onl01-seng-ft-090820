class MP3_Importer
    attr_accessor :filename, :path
    
    def initialize(path)
        @path = path
    end

    def files
        @files = Dir.entries(path)
        @files.delete_if {|file| file == "." || file == ".."}
    end

    def import 
        files.each do |file|
            filename = file.gsub(".mp3", "")
            Song.new_by_filename(filename)
        end
    end
    
end


    
    
    
    
    
    
    
    
    
    
    





    
    
    
    