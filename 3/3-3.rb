# raise StandardError, 'error!'

begin
  do_process
rescue => e
  puts "Error occurred (#{e.class})"
end

# e.messageは例外について読める形式の詳細なメッセージを文字列で返す
# e.backtraceは例外は発生した時点のコールスタックを配列で返す
