require 'test_helper'

class UserTest < ActiveSupport::TestCase

  context "a Konfig installation" do

    should "have Konfig module" do
      assert Konfig
    end

    should "load all yaml files" do
      assert Konfig[:sample1]
      assert Konfig[:sample2]
    end

    should "have correct values" do
      assert_equal YAML.load_file(konfig_path("sample1.yml")), Konfig[:sample1]
      assert_equal YAML.load_file(konfig_path("sample2.yml")), Konfig[:sample2]
    end

    should "evaluate dynamic properties correctly" do
      assert_equal 1, Konfig[:dynamic][:one]
      assert_equal 2, Konfig[:dynamic][:two]
      assert_equal 1+2, Konfig[:dynamic][:one_plus_two]
    end

    should "allow dynamic properties to access rails environment" do
      assert_equal Rails.root, Konfig[:dynamic][:rails_root]
    end

    should "apply user adapters" do
      assert_equal :sample_adapter, Konfig[:sample_adapter]
    end

  end

end
