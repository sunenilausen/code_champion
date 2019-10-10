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
    "http#{secure}://#{ip_address}#{colon_port}"
  end

  private
    def colon_port
      port.present? ? ":#{port}" : ""
    end

    def secure
      ssl ? "s" : ""
    end
end
