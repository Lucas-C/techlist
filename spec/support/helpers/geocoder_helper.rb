module GeocoderHelper
  def stub_geocoding_request(address, latitude, longitude)
    Geocoder.configure(lookup: :test)

    Geocoder::Lookup::Test.add_stub(
      address, [
        {
          'latitude'  => latitude,
          'longitude' => longitude
        }
      ]
    )
  end
end
