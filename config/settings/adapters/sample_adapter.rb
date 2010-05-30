class SampleAdapter < Konfig::Adapter

  # The adapter parent class provides an accessor 'data' which contains
  # the raw settings data.
  #
  # Do whatever you want with the data here. You could use it to set up
  # a 3rd party plugin. You an also modify the data itself. Changes to 
  # data will be available to the rest of the application.
  #
  def adapt

    # Will be available to adapter via Konfig[:sample_adapter]
    data[:sample_adapter] = :sample_adapter

  end

end
