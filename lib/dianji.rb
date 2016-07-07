require "dianji/version"
require 'digest'
require "dianji/sms"
require "dianji/balance"

module Dianji
  
  class << self
    attr_accessor :account, :password, :gateway, :signature
  end
  
end
