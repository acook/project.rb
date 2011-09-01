require 'spec_helper'

ruby_script = './<%= @name %>'

describe ruby_script do
  it "exits cleanly" do
    status, output = run ruby_script, test_file

    status.to_i.should eq(0),
      "## status: #{status.inspect} \n## pinfo: #{output.inspect}"
  end
end

