class SampleAdapter < Konfig::Adapter

  # Do whatever you want with the data here. You could use it to set up
  # a 3rd party plugin, or to modify the config data.
  # @param [Hash] data The raw settings data
  def adapt(data)
    data[:sample_adapter] = :sample_adapter
  end

end
