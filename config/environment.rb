# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# PDFKit
Mime::Type.register "application/pdf", :pdf
