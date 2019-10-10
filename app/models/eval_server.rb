class EvalServer < ApplicationRecord
  belongs_to :language

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
