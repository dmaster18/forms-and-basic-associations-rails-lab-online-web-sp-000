class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  
    def artist_name=(name)
      self.artist = Artist.find_or_create_by(name: name)
    end
  
    def artist_name
       self.artist ? self.artist.name : nil
    end

    def genre_name=(name)
      self.genre = Genre.find_or_create_by(name: name)
    end

    def genre_name
      self.genre ? self.genre.name : nil
    end

    def note_contents=(contents)
      contents.each do |content|
        if content.strip != ""
           self.notes.build(content: content)
        end
      end
    end
  
    def note_contents
      self.notes.map(&:content)
    end
end
   def genre_name=(name)
     @genre_name = self.genre.name
   end
   
   def genre_name
     @genre_name
   end
   
   def note_content=(content)
     @note_content = self.note.content
   end
   
   def note_content
     @note_content
  end

   
   @song_notes = []
   
   def song_notes
     @song_notes
  end
    
end
