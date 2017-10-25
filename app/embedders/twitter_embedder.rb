class TwitterEmbedder < Embedder
  def oembed_url
    "https://publish.twitter.com/oembed?url=#{url}"
  end

  def json_oembed_url
    "#{oembed_url}&format=json"
  end

  def oembed_data
    @oembed_data ||= JSON.parse(get(json_oembed_url))
  end

  def to_h
    oembed_data.merge(oembed_url: json_oembed_url, url: url).reject { |_k, v| v.blank? }
  end

  def match?
    url.include?('twitter.com') || url.include?('t.co')
  end
end
