require 'test_helper'

class SmtpAdapterTest < ActiveSupport::TestCase

  context "a Konfig installation with an '_smtp.yml' file" do

    should "read the file" do
      assert Konfig[:_smtp]
    end

    should "run the file through the SmtpAdapter" do
      assert_equal :ok, Konfig[:_smtp][:_status]
    end

    should "set ActionMailer::Base.smtp_settings" do
      assert_equal Konfig[:_smtp][Rails.env].symbolize_keys, ActionMailer::Base.smtp_settings
    end

  end
end
