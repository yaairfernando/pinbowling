module Pinbowling
  module Game
    class Play < Thor::Group
      include Thor::Actions

      class_option :play, aliases: "p", desc: "Startr a new game"
      argument :file, type: :string, required: true, desc: ".txt File with the players and frame"
      def play
        @file = file
        Core::Helpers::Validators.run(file)
        p "Game started"
        p @file
      end

      attr_accessor :file
    end
  end
end
