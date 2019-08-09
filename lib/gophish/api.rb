# frozen_string_literal: true

module GoPhish
  class Api
    def initialize(url, key)
      @url = url
      @key = key
    end

    def get_campaigns
      uri = @url + '/api/campaigns?api_key=' + @key
      res = open(uri, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE).read
      JSON res
    end

    def get_campaign(id)
      uri = @url + "/api/campaigns/#{id}?api_key=" + @key
      res = open(uri, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE).read
      JSON res
    end

    def create_campaign(conf = {})
      conf = JSON conf
      uri = URI.parse(@url + '/api/campaigns/?api_key=' + @key)
      headers = {
        'Content-Type': 'text/json'
      }
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Post.new(uri.request_uri, headers)
      request.body = conf
      res = http.request(request)
      JSON res
    end

    def delete_campaign(id)
      uri = URI.parse(@url + "/api/campaigns/#{id}?api_key=" + @key)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      req = Net::HTTP::Delete.new(uri.request_uri)
      res = http.request(req)
      JSON res
    end

    def get_templates
      uri = @url + '/api/templates?api_key=' + @key
      res = open(uri, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE).read
      JSON res
    end

    def get_template(id)
      uri = @url + "/api/templates/#{id}?api_key=" + @key
      res = open(uri, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE).read
      JSON res
    end

    def create_template(conf = {})
      conf = JSON conf
      uri = URI.parse(@url + '/api/templates/?api_key=' + @key)
      headers = {
        'Content-Type': 'text/json'
      }
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Post.new(uri.request_uri, headers)
      request.body = conf
      res = http.request(request)
      JSON res
    end

    def delete_template(id)
      uri = URI.parse(@url + "/api/templates/#{id}?api_key=" + @key)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      req = Net::HTTP::Delete.new(uri.request_uri)
      res = http.request(req)
      JSON res
    end

    def get_groups
      uri = @url + '/api/groups?api_key=' + @key
      res = open(uri, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE).read
      JSON res
    end

    def get_group(id)
      uri = @url + "/api/groups/#{id}?api_key=" + @key
      res = open(uri, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE).read
      JSON res
    end

    def create_group(conf = {})
      conf = JSON conf
      uri = URI.parse(@url + '/api/groups/?api_key=' + @key)
      headers = {
        'Content-Type': 'text/json'
      }
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Post.new(uri.request_uri, headers)
      request.body = conf
      res = http.request(request)
      JSON res
    end

    def delete_group(id)
      uri = URI.parse(@url + "/api/groups/#{id}?api_key=" + @key)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      req = Net::HTTP::Delete.new(uri.request_uri)
      res = http.request(req)
      JSON res
    end

    def get_smtps
      uri = @url + '/api/smtp?api_key=' + @key
      res = open(uri, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE).read
      JSON res
    end

    def get_smtp(id)
      uri = @url + "/api/smtps/#{id}?api_key=" + @key
      res = open(uri, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE).read
      JSON res
    end

    def create_smtp(conf = {})
      conf = JSON conf
      uri = URI.parse(@url + '/api/smtps/?api_key=' + @key)
      headers = {
        'Content-Type': 'text/json'
      }
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Post.new(uri.request_uri, headers)
      request.body = conf
      res = http.request(request)
      JSON res
    end

    def delete_smtp(id)
      uri = URI.parse(@url + "/api/smtps/#{id}?api_key=" + @key)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      req = Net::HTTP::Delete.new(uri.request_uri)
      res = http.request(req)
      JSON res
    end

    def get_pages
      uri = @url + '/api/pages?api_key=' + @key
      res = open(uri, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE).read
      JSON res
    end

    def get_page(id)
      uri = @url + "/api/pages/#{id}?api_key=" + @key
      res = open(uri, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE).read
      JSON res
    end

    def create_page(conf = {})
      conf = JSON conf
      uri = URI.parse(@url + '/api/pages/?api_key=' + @key)
      headers = {
        'Content-Type': 'text/json'
      }
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Post.new(uri.request_uri, headers)
      request.body = conf
      res = http.request(request)
      JSON res
    end

    def delete_page(id)
      uri = URI.parse(@url + "/api/pages/#{id}?api_key=" + @key)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      req = Net::HTTP::Delete.new(uri.request_uri)
      res = http.request(req)
      JSON res
    end
  end
end
