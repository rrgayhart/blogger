class Tag < ActiveRecord::Base
  
  has_many :taggings
  has_many :articles, through: :taggings

  def to_s
    name
  end

  def tag_params
    params.require(:tag).permit(:name)
  end

end
