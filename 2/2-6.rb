# モジュールとはインスタンス化できないクラスのようなもの

module Brainfsck
  class Parser
    puts 4  
  end
end

module Whitespace
  class Parser
    puts 5
  end
end

Brainfsck::Parser
Whitespace::Parser