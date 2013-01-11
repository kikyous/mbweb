module SlideItemsHelper
	def img_src(src)
		begin
			/src\s*=\s*"[^"]+"/.match(src)[0]
		rescue
			""
		end
	end
end
