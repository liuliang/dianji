module Dianji
  module Sms
    extend self

    def send_to(phone, content, timestamps, options = {})
      options = options.merge({
        account: Dianji.account,
        password: ::Digest::MD5.hexdigest([Dianji.password, phone, timestamps].join),
        mobile: phone,
        content: "#{Dianji.signature}#{content}",
        timestamps: timestamps
        })
      JSON.parse RestClient.post("#{Dianji.gateway}/msgHttp/json/mt", options)
    end
  end
end
