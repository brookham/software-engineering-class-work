class File_api
  def initialize()
    @file_name = file
    @pointer = open_file(file)

  end

  def read
    data = read_data(@pointer)
    puts data
  end
  def write(data)
    write_data(@pointer, data)
  end
  def close
    close_file(@pointer)
  end

end

file = File_api.new("example.txt")
data = file.read()
