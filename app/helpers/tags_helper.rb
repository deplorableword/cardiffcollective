module TagsHelper

  def cache_key_for_all_tags
    count          = ActsAsTaggableOn::Tagging
    max_created_at = ActsAsTaggableOn::Tagging.maximum(:created_at).try(:utc).try(:to_s, :number)
    "all_tags/all-#{ count }-#{ max_created_at }"
  end

end
