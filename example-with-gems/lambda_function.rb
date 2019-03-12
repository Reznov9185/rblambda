require 'json'
require 'caesar_cipher'

# with default shift of 8
caesar = CaesarCipher::Caesar.new 8

def lambda_handler(event:, context:)
  { statusCode: 200, body: JSON.generate(Decipher: caesar.decipher 'pmttw Zcjg') }
end
