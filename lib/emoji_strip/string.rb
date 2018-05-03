class String
  def emoji_strip
    gsub(EmojiStrip::EmojiRegexp.call, '')
  end

  def emoji_strip!
    gsub!(EmojiStrip::EmojiRegexp.call, '')
  end

  def contain_emoji?
    !match(EmojiStrip::EmojiRegexp.call).nil?
  end

  def emojis
    scan(EmojiStrip::EmojiRegexp.call)
  end
end
