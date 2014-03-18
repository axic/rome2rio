module Rome2rio
  class Connection
    def initialize(opts = {})
      @apikey = opts[:apikey]
      @endpoint = opts[:endpoint] || "http://free.rome2rio.com"
    end

    def handle_response(response)
      if response.status == 200
        SearchResponse.new(MultiJson.decode(response.body))
      else
        {:status => response.status, :body => response.body}
      end
    end

    def encode_params(params)
      URI.encode_www_form(params)
    end

    def search(opts)
      opts[:key] ||= @apikey if @apikey

      # format SearchFlags
      flags = opts[:flags]
      opts[:flags] = SearchRequestFlags.new(flags)  if flags.is_a?(Symbol) or flags.is_a?(Array)

      request = "/api/1.2/json/Search?#{encode_params(opts)}"

      handle_response(Faraday.new(:url => @endpoint).get(request))

      #      handle_response(conn.get do |req|
      #	  req.headers['Content-Type'] = 'application/json'
      #	  req.url request_url
      #      end)
    end
  end
end
