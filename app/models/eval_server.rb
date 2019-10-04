class EvalServer < ApplicationRecord
  enum language: [
    :ruby,
    :javascript,
    :python3,
    :python2
  ]

  enum status: [
    :ok,
    :unavailable
  ]

  def url
    "http://#{ip_address}#{colon_port}"
  end

  private
    def colon_port
      return "" unless port.present?
      ":#{port}"
    end
end
