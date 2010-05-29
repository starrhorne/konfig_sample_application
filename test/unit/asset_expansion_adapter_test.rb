require 'test_helper'

class AssetExpansionAdapterTest < ActiveSupport::TestCase

  context "a Konfig installation with a '_javascript_expansions.yml' file" do

    should "read the file" do
      assert Konfig[:_javascript_expansions]
    end

    should "run the file through the SmtpAdapter" do
      assert Konfig[:_javascript_expansions][:_adapted]
    end

  end
end
