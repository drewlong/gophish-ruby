# frozen_string_literal: true

module GoPhish
  class Client
    attr_accessor :url, :api_key

    def initialize(options = {})
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
      yield(self) if block_given?
      @api = GoPhish::Api.new(@url, @api_key)
    end

    def get_campaigns
      res = @api.get_campaigns
      res
    end

    def get_campaign(id = 1)
      res = @api.get_campaign(id)
      res
    end

    def create_campaign(conf = {})
      res = @api.create_campaign(conf)
      res
    end

    def delete_campaign(id = 1)
      res = @api.delete_campaign(id)
      res
    end

    def get_templates
      res = @api.get_templates
      res
    end

    def get_template(id = 1)
      res = @api.get_template(id)
      res
    end

    def create_template(conf = {})
      res = @api.create_template(conf)
      res
    end

    def delete_template(id = 1)
      res = @api.delete_template(id)
      res
    end

    def get_groups
      res = @api.get_groups
      res
    end

    def get_group(id = 1)
      res = @api.get_group(id)
      res
    end

    def create_group(conf = {})
      res = @api.create_group(conf)
      res
    end

    def delete_group(id = 1)
      res = @api.delete_group(id)
      res
    end

    def get_smtps
      res = @api.get_smtps
      res
    end

    def get_smtp(id = 1)
      res = @api.get_smtp(id)
      res
    end

    def create_smtp(conf = {})
      res = @api.create_smtp(conf)
      res
    end

    def delete_smtp(id = 1)
      res = @api.delete_smtp(id)
      res
    end

    def get_pages
      res = @api.get_pages
      res
    end

    def get_page(id = 1)
      res = @api.get_page(id)
      res
    end

    def create_page(conf = {})
      res = @api.create_page(conf)
      res
    end

    def delete_page(id = 1)
      res = @api.delete_page(id)
      res
    end
  end
end
