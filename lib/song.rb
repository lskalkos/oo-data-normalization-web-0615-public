class Song
  # code goes here
  attr_accessor :title, :artist

  PATH = "./tmp"

  def serialize
    path = './tmp/' + self.title.downcase.gsub(/\s/, '_') + '.txt'
    content = self.artist.name + " - " + self.title
    File.write(path, content)
  end

end
