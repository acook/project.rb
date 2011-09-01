module RunExe
  def run *args
    output = Struct.new :pid, :stdout, :stderr
    command = args.join(' ')

    status = Open4.popen4(command) do |pid, stdin, stdout, stderr|
      output = output.new pid, stdout.read, stderr.read
    end

    [status, output]
  end

  def bash *args
    run *args.unshift(:bash)
  end
end
