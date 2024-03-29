# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/activemodel-serializers-xml/all/activemodel-serializers-xml.rbi
#
# activemodel-serializers-xml-1.0.2

module ActiveModel
end
module ActiveModel::Serializers
  extend ActiveSupport::Autoload
end
module ActiveModel::Serializers::Xml
  def from_xml(xml); end
  def to_xml(options = nil, &block); end
  extend ActiveSupport::Concern
  include ActiveModel::Serialization
end
class ActiveModel::Serializers::Xml::Serializer
  def add_associations(association, records, opts); end
  def add_attributes_and_methods; end
  def add_extra_behavior; end
  def add_includes; end
  def add_procs; end
  def initialize(serializable, options = nil); end
  def options; end
  def serializable_collection; end
  def serializable_hash; end
  def serialize; end
end
class ActiveModel::Serializers::Xml::Serializer::Attribute
  def compute_type; end
  def decorations; end
  def initialize(name, serializable, value); end
  def name; end
  def type; end
  def value; end
end
class ActiveModel::Serializers::Xml::Serializer::MethodAttribute < ActiveModel::Serializers::Xml::Serializer::Attribute
end
module ActiveRecord
end
module ActiveRecord::Serialization
  def to_xml(options = nil, &block); end
  include ActiveModel::Serializers::Xml
end
class ActiveRecord::XmlSerializer < ActiveModel::Serializers::Xml::Serializer
end
class ActiveRecord::XmlSerializer::Attribute < ActiveModel::Serializers::Xml::Serializer::Attribute
  def compute_type; end
end
