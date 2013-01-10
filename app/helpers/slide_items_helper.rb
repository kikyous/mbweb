module SlideItemsHelper
	def img_src(src)
		begin
			/src="[^"]+"/.match(src)[0]
		rescue
			""
		end
	end
end
