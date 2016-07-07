module Dianji
  module Balance
    extend self

    def info(timestamps)
      options = {
        account: Dianji.account,
        password: Digest::MD5.hexdigest([Dianji.password, timestamps].join),
        timestamps: timestamps
      }
      JSON.parse RestClient.post("#{Dianji.gateway}/msgHttp/json/balance", options)
    end
  end
end
