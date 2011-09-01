require 'bundler'
Bundler.require(:test)

require '<%= @name %>'

def test_file kind = :txt
  "./spec/fixtures/test_file.#{kind}"
end

def test_data kind = :txt
  File.open(test_file(kind), File::RDONLY).read
end

def run *args
  output = Struct.new :pid, :stdout, :stderr

  status = Open4.popen4(*args) do |pid, stdin, stdout, stderr|
    output = output.new pid, stdout.read, stderr.read
  end

  [status, output]
end
