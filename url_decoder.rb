class DECODED

def initialize(url)
  @url = url
end

def url_decode()
  text_with_spaces = @url.gsub(/%20/, ' ')
  text_with_spaces.split('&').map { |pair| pair.split('=') }.to_h
end

end


puts DECODED.new("duck=rubber").url_decode
puts DECODED.new("bootcamp=Lighthouse%20Labs").url_decode
puts DECODED.new("city=Vancouver&weather=lots%20of%20sunshine").url_decode
puts DECODED.new("city=Vancouver&weather=lots%20of%20sunshine").url_decode["weather"]

