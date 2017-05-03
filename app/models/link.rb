require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  has n, :tags, through: Resource

  property :id,       Serial
  property :title,    String
  property :url,      String

end

# link = Link.create
# tag = Tag.create
# link.tags << tag
# link.save
#
# LinkTag.create(:link => link, :tag => tag)
