require "net/http"
require "uri"
require "rexml/document"
require "date"
include REXML

uri = URI.parse("https://xml.meteoservice.ru/en/export/gismeteo/point/37.xml")
response = Net::HTTP.get_response(uri)
xml_doc = Document.new(response.body)



XPath.each(xml_doc, "//FORECAST") { |e|

 date = "#{e.attributes["day"]}.#{e.attributes["month"]}.#{e.attributes["year"]}"
 (e.attributes["hour"].to_i > 20) ? date_time = "nigth" : date_time = "ligth"

}
# 25.08.2016, ночь
# +14..+16, ветер 2 м/с, пасмурно

# 25.08.2016, утро
# +14..+21, ветер 3 м/с, малооблачно




