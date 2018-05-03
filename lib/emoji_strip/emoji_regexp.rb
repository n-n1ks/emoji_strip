module EmojiStrip
  class EmojiRegexp
    class << self
      def call
        regexp
      end

      private

      def regexp
        codes = codes_formated.join('|')

        Regexp.new(codes)
      end

      def codes_formated
        EmojiStrip::EmojiCodes.call.map { |x| "\\u{#{x}}" }
      end
    end
  end
end
