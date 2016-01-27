module UserProfsHelper

	# 2-2. ユーザー一覧の女性の行のみ、class="female"を付与
	def add_female_if(male)
		unless male
			return 'class=female'
		end
	end

end
