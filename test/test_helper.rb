Test::Unit::TestCase.fixture_path = File.expand_path(File.dirname(__FILE__)) + "/fixtures/"
$LOAD_PATH.unshift(Test::Unit::TestCase.fixture_path)

Fixtures.create_fixtures(Test::Unit::TestCase.fixture_path, %w(countries languages translations).collect{|table_name| "globalize_#{table_name}"})

module Globalize #:nodoc:
  class Locale #:nodoc:
    def self.formatting=(formatting) #:nodoc:
      @@formatting = formatting
    end
  end
  
  module Helpers #:nodoc:
    def self.click_partial #:nodoc:
      @@click_partial
    end
  end
end
