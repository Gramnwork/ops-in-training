class UserProf < ActiveRecord::Base

	# 3-2. バリデーション追加｜name10文字以上、性別必須
	validates :name, length: { minimum: 10 } 
	validates :age, presence: true

	# 3-3. User一覧に女性のみ表示
	scope :user_female, -> {where(male: false)}

end
