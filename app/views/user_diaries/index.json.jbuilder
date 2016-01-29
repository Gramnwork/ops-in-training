json.array!(@user_diaries) do |user_diary|
  json.extract! user_diary, :id, :diary_title, :diary_content
  json.url user_diary_url(user_diary, format: :json)
end
