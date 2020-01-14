class ApplicationController < ActionController::Base
  include DeviseConcern
  include SourceConcern
end
