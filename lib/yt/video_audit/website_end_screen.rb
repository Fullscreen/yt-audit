require 'yt/video_audit/base'

module Yt
  module VideoAudit
    # Count how many subject videos have an end screen
    # with a website link.
    class WebsiteEndScreen < Base
      def title
        'Website End Screens'
      end

      def description
        'The number of videos with any external link in its end screens'
      end

    private

      def valid?(video)
        Yt::Annotations.for(video.id).any? do |annotation|
          annotation.instance_of?(Yt::Annotations::EndScreen) &&
          annotation.link && annotation.link[:type] == :website
        end
      end
    end
  end
end
