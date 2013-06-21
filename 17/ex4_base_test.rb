#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex4_base'
require 'ex3_members'

class TigertTest < Test::Unit::TestCase

  def setup
  end

  def test_tiger_and_jungle
    jungle1 = Jungle.new('southern jungle')
    jungle2 = Jungle.new('northern jungle')
    t = Tiger.new('tony')

    jungle1.add_sub_population(t)
    assert_equal jungle1, t.parent_population
    assert jungle1.sub_populations.include?(t)

    jungle1.delete_sub_population(t)
    assert ! jungle1.sub_populations.include?(t)
    assert_nil t.parent_population

    jungle2.add_sub_population(t)
    assert_equal jungle2, t.parent_population
  end

  def test_jungle_region
    t = Tiger.new('tony')
    jungle = Jungle.new('southern jungle')
    region = Region.new('south')

    region.add_sub_population(jungle)
    jungle.add_sub_population(t)

    assert_equal jungle, t.parent_population
    assert_equal region, jungle.parent_population

    assert jungle.sub_populations.include?(t)
    assert region.sub_populations.include?(jungle)

    current = t
    while current.parent_population
      current = current.parent_population
    end

    assert_equal region, current
  end

  def test_tiger_and_species
    species1 = Species.new('bengal')
    species2 = Species.new('siberian')
    t = Tiger.new('tony')

    species1.add_sub_classification(t)
    assert_equal species1, t.parent_classification
    assert species1.sub_classifications.include?(t)

    species1.delete_sub_classification(t)
    assert ! species1.sub_classifications.include?(t)
    assert_nil t.parent_classification

    species2.add_sub_classification(t)
    assert_equal species2, t.parent_classification
  end

  def test_population_and_species
    species = Species.new('bengal')
    jungle = Jungle.new('southern jungle')
    t = Tiger.new('tony')

    species.add_sub_classification(t)
    jungle.add_sub_population(t)

    assert_equal species, t.parent_classification
    assert_equal jungle, t.parent_population
  end

end
