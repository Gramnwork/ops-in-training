json.array!(@diaries) do |diary|
  json.extract! diary, :id, :user_prof_id, :title, :content
  json.url diary_url(diary, format: :json)
end
