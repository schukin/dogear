require 'httparty'
require 'json'

module DogEar
	class Client
		def initialize(api_key)
			@api_key = api_key
		end

		def notify(server_id, message)
			headers = {'Authorization' => "Token token=\"#{@api_key}\"", 'Content-type' => 'application/json'}
			body = { message: message }.to_json
			response = HTTParty.post("https://dogear.io/api/v1/servers/notify/#{server_id}", headers: headers, body: body)

			case response.code
			when 200
				return true
			else
				begin
					json = JSON.parse(response.body)
				rescue
					raise Error.new(response.body)
				end

				unless json['error'].nil?
					raise Error.new(json['error'])
				end
			end

			return false
		end
	end

	class Error < StandardError
	end
end
