class PictureSearch
attr_accessor :name

def initialize(params)
	params||= {}
	@name = params[:name]
end

def scope
	@search = Picture.where("(description Like ?) or (name Like ?)", "%#{@name}%", "%#{@name}%")
end
end