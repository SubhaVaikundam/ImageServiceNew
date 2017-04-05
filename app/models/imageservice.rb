class Imageservice
  include Mongoid::Document
  store_in collection: "buymartProduct"
  field :catentry_id, type: String
  field :imageURLs, type: Array
end

