require 'rubygems'

require 'irb/completion'
require 'irb/src_encoding'
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:USE_READLINE] = true

def require_or_notice lib
  require lib
  yield if block_given?
rescue LoadError => e
  puts "[~/.irbrc] #{e.to_s}"
end

require_or_notice 'wirble' do
  Wirble.init
  Wirble.colorize
end

require_or_notice 'awesome_print' do
  def pp *val
    ap val
  end
end

require_or_notice 'interactive_editor'

require_or_notice 'hirb' do
  require_or_notice 'hirb-unicode'
  Hirb.enable
end

# def reload!
# #  $LOADED_FEATURES = []
#   reload!
# end

def echo flg
  irb_context.echo = flg
end

if defined?(Rails::Console) && defined?(ActiveRecord::Base)
  ActiveRecord::Base.logger = nil
  # ActiveResource::Base.logger = nil

  def logger flg
    buff = irb_context.echo
    irb_context.echo = false
    ActiveRecord::Base.logger = flg ? Logger.new(STDOUT) : nil
    # ActiveResource::Base.logger = flg ? Logger.new(STDOUT) : nil
    irb_context.echo = buff
    puts "Logger #{flg ? "On" : "Off"}"
  end
end
