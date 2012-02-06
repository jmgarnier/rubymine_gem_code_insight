require "rubymine_gem_code_insight/version"

require 'feed-normalizer' # RM does not find the file

module RubymineGemCodeInsight

  class RssLinksExtractor
      RSS = "http://www.guardian.co.uk/weekly/rss"

      def find_links
        # RM does not provide code insight for FeedNormalizer
        FeedNormalizer::FeedNormalizer.parse(RSS).entries.map { |entry| entry.urls.first }
      end
    end


end
