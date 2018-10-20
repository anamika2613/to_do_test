module ToDoCategoriesHelper
	def select_sub_category
		SubCategory.pluck(:name,:id).insert(0,["Select sub category",nil])
	end
end
