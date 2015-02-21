json.array!(@helps) do |help|
  json.extract! help, :id, :code, :description, :first_name, :last_name, :payment_status, :question_status, :email, :invoice
  json.url help_url(help, format: :json)
end
