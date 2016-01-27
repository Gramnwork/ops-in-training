class UserDiary < ActiveRecord::Base

	# 3-4. 多側：一対多の関係（ユーザーは複数の日記レコードを持つ）
	belongs_to :user_prof

end
