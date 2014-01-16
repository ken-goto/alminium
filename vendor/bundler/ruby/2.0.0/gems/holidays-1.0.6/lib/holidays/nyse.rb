# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: data/nyse.yaml
  #
  # To use the definitions in this file, load it right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/nyse'
  #
  # All the definitions are available at https://github.com/alexdunae/holidays
  module NYSE # :nodoc:
    def self.defined_regions
      [:nyse]
    end

    def self.holidays_by_month
      {
              0 => [{:function => lambda { |year| Holidays.easter(year)-2 }, :function_id => "easter(year)-2", :name => "Good Friday", :regions => [:nyse]}],
      1 => [{:mday => 1, :name => "New Year's Day", :regions => [:nyse]},
            {:wday => 1, :week => 3, :name => "Martin Luther King, Jr. Day", :regions => [:nyse]}],
      2 => [{:wday => 1, :week => 3, :name => "Presidents' Day", :regions => [:nyse]}],
      5 => [{:wday => 1, :week => -1, :name => "Memorial Day", :regions => [:nyse]}],
      7 => [{:mday => 4, :observed => lambda { |date| Holidays.to_weekday_if_weekend(date) }, :observed_id => "to_weekday_if_weekend", :name => "Independence Day", :regions => [:nyse]}],
      9 => [{:wday => 1, :week => 1, :name => "Labor Day", :regions => [:nyse]}],
      11 => [{:wday => 4, :week => 4, :name => "Thanksgiving", :regions => [:nyse]}],
      12 => [{:mday => 25, :observed => lambda { |date| Holidays.to_weekday_if_weekend(date) }, :observed_id => "to_weekday_if_weekend", :name => "Christmas Day", :regions => [:nyse]}]
      }
    end
  end


end

Holidays.merge_defs(Holidays::NYSE.defined_regions, Holidays::NYSE.holidays_by_month)
