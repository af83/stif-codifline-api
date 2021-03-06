require 'codifligne/v1/api'
require 'codifligne/v2/api'

class Codifligne::API
  def self.api_version
    @api_version || 1
  end

  def self.api_version= version
    @api_version = version
  end

  def self.base_url= base_url
    @base_url = base_url
  end

  def self.base_url
    @base_url
  end

  def self.new(*params)
    const_get("Codifligne::V#{api_version}::API").new(*params)
  end
end
