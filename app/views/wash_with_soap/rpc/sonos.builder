xml.instruct!
xml.tag! "soap:Envelope", "xmlns:soap" => 'http://schemas.xmlsoap.org/soap/envelope/' do
  xml.tag! "soap:Body" do
    xml.tag! "#{@action_spec[:response_tag]}", "xmlns" => @namespace do
      wsdl_data xml, result
    end
  end
end