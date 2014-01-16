# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/fr.yaml
class FrDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_fr
{Date.civil(2007,1,1) => 'Jour de l\'an', 
 Date.civil(2007,4,8) => 'Pâques',
 Date.civil(2007,4,9) => 'Lundi de Pâques',
 Date.civil(2007,5,1) => 'Fête du travail',
 Date.civil(2007,5,8) => 'Victoire 1945',
 Date.civil(2007,5,17) => 'Ascension',
 Date.civil(2007,5,27) => 'Pentecôte',
 Date.civil(2007,5,28) => 'Lundi de Pentecôte',
 Date.civil(2007,7,14) => 'Fête nationale',
 Date.civil(2007,8,15) => 'Assomption',
 Date.civil(2007,11,1) => 'Toussaint',
 Date.civil(2007,11,11) => 'Armistice 1918',
 Date.civil(2007,12,25) => 'Noël'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :fr, :informal)[0] || {})[:name]
end
  end
end