require "pws"
require "rotp"

require_relative "otp/version"

class PWS
  module Otp
    # Gets the TOTP secrect and copies current time based key to the clipboard.
    # The second parameter is the time in seconds it stays there
    def get_totp(key, seconds = @options[:seconds])
      if real_key = @abbrevs[key]
        secret = @data[real_key][:password]
        password = ROTP::TOTP.new(secret).now
        if seconds && seconds.to_i > 0
          original_clipboard_content = Clipboard.paste
          Clipboard.copy(password)
          pa %[The password for #{real_key} is now available in your clipboard for #{seconds.to_i} second#{?s if seconds.to_i > 1}], :green
          begin
            sleep seconds.to_i
          rescue Interrupt
            Clipboard.copy original_clipboard_content
            raise
          end
          Clipboard.copy original_clipboard_content
          return true
        else
          Clipboard.copy(password)
          pa %[The password for #{real_key} has been copied to your clipboard], :green
          return true
        end
      else
        pa %[No password found for #{key}!], :red
        return false
      end
    end
  end
end

PWS.include(PWS::Otp)
