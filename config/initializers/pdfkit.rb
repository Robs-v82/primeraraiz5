PDFKit.configure do |config| 
config.default_options[:quiet] = false
config.wkhtmltopdf ='/usr/local/bin/wkhtmltopdf'
config.default_options = {
   # :encoding=>"UTF-8",
   # :page_size=>"Ledger",
   # :zoom => '1.3',
   :disable_smart_shrinking=>false
}
end