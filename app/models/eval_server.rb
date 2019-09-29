class EvalServer < ApplicationRecord
  enum language: [
    :ruby,
    :javascript,
    :python
  ]

  enum status: [
    :ok,
    :unavailable
  ]
end
