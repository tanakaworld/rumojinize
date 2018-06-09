module Rumojinize::Core
  extend ActiveSupport::Concern

  module ClassMethods
    def rumojinize(*field_names)
      raise ArgumentError.new 'Need to set field names.' unless (field_names.present? && field_names.size > 0)

      field_names.each do |field_name|
        define_method "#{field_name}=" do |text|
          write_attribute(field_name, Rumoji.encode(text))
        end
        define_method field_name do
          text = read_attribute(field_name)
          Rumoji.decode(text) if text.present?
        end
      end
    end
  end
end