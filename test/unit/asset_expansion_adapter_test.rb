require 'test_helper'

class AssetExpansionAdapterTest < ActiveSupport::TestCase

  context "a Konfig installation with a '_javascript_expansions.yml' file" do

    should "read the file" do
      assert Konfig[:_javascript_expansions]
    end

    should "run the file through the Adapter" do
      assert_equal :ok, Konfig[:_javascript_expansions][:_status]
    end

  end
end
