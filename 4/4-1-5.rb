class Processor
  def process
    protected_process
  end

  def protected_process
    private_process
  end
  # protected_processをprotectedに
  protected :protected_process

  def private_process
    puts 'Done!'
  end
  # private_processをprivateに
  private :private_process
end

processor = Processor.new
processor.process



class Processor
  def process(other)
    other.protected_process
  end

  def protected_process
    puts 'Called'
  end
  protected :protected_process
end

processor = Processor.new
processor.process(Processor.new)
