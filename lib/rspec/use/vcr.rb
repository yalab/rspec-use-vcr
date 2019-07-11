require "rspec/use/vcr/version"

module Rspec
  module Use
    module Vcr
      def use_vcr(*opts)
        around {|t| VCR.use_cassette(t.metadata[:full_description].gsub(/\s/, ''), *opts){ t.run } }
      end
    end
  end
end

RSpec.configure do |c|
  c.extend Rspec::Use::Vcr
end
