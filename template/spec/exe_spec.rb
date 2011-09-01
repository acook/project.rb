require 'spec_helper'

def run *args
  output = Struct.new :pid, :stdout, :stderr

  status = Open4.popen4(*args) do |pid, stdin, stdout, stderr|
    output = output.new pid, stdout.read, stderr.read
  end

  [status, output]
end

ruby_script = './<%= @name %>'

describe ruby_script do
  it "exits cleanly" do
    status, output = run ruby_script, test_file

    status.to_i.should eq(0),
      "## status: #{status.inspect} \n## pinfo: #{output.inspect}"
  end
end

