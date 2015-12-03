module CanBeSampled
  extend ActiveSupport::Concern

  included do
    def self.create_sample(attrs={})
      dasherized_class_name = self.to_s.tableize.dasherize

      url = 'http://localhost:3000/api/' + dasherized_class_name
      query = {data: { type: dasherized_class_name, attributes: attrs }}.to_json

      `curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '#{query}' '#{url}'`            
    end 
  end
end